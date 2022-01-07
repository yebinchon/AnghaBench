
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_18__ {int hash; } ;
struct TYPE_17__ {TYPE_1__* items; } ;
struct TYPE_19__ {TYPE_3__ data; int mmap; TYPE_2__ entry; } ;
struct TYPE_16__ {int hash; int object_offset; } ;
typedef TYPE_4__ Object ;
typedef TYPE_4__ MMapFileDescriptor ;
typedef TYPE_4__ JournalFile ;


 int EBADMSG ;
 int OBJECT_DATA ;
 int assert (TYPE_4__*) ;
 int contains_uint64 (int ,TYPE_4__*,size_t,size_t) ;
 int data_object_in_hash_table (TYPE_4__*,size_t,size_t) ;
 int error (size_t,char*) ;
 size_t journal_file_entry_n_items (TYPE_4__*) ;
 int journal_file_move_to_object (TYPE_4__*,int ,size_t,TYPE_4__**) ;
 size_t le64toh (int ) ;

__attribute__((used)) static int verify_entry(
                JournalFile *f,
                Object *o, uint64_t p,
                MMapFileDescriptor *cache_data_fd, uint64_t n_data) {

        uint64_t i, n;
        int r;

        assert(f);
        assert(o);
        assert(cache_data_fd);

        n = journal_file_entry_n_items(o);
        for (i = 0; i < n; i++) {
                uint64_t q, h;
                Object *u;

                q = le64toh(o->entry.items[i].object_offset);
                h = le64toh(o->entry.items[i].hash);

                if (!contains_uint64(f->mmap, cache_data_fd, n_data, q)) {
                        error(p, "Invalid data object of entry");
                        return -EBADMSG;
                }

                r = journal_file_move_to_object(f, OBJECT_DATA, q, &u);
                if (r < 0)
                        return r;

                if (le64toh(u->data.hash) != h) {
                        error(p, "Hash mismatch for data object of entry");
                        return -EBADMSG;
                }

                r = data_object_in_hash_table(f, h, q);
                if (r < 0)
                        return r;
                if (r == 0) {
                        error(p, "Data object missing from hash table");
                        return -EBADMSG;
                }
        }

        return 0;
}
