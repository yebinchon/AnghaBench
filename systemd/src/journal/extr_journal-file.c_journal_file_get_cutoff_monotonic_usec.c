
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
typedef scalar_t__ uint64_t ;
typedef int sd_id128_t ;
struct TYPE_8__ {int monotonic; } ;
struct TYPE_7__ {int n_entries; int entry_array_offset; int entry_offset; } ;
struct TYPE_9__ {TYPE_2__ entry; TYPE_1__ data; } ;
typedef TYPE_3__ Object ;
typedef int JournalFile ;


 int OBJECT_DATA ;
 int OBJECT_ENTRY ;
 int assert (int) ;
 int find_data_object_by_boot_id (int *,int ,TYPE_3__**,scalar_t__*) ;
 int generic_array_get_plus_one (int *,scalar_t__,scalar_t__,scalar_t__,TYPE_3__**,int *) ;
 int journal_file_move_to_object (int *,int ,scalar_t__,TYPE_3__**) ;
 scalar_t__ le64toh (int ) ;

int journal_file_get_cutoff_monotonic_usec(JournalFile *f, sd_id128_t boot_id, usec_t *from, usec_t *to) {
        Object *o;
        uint64_t p;
        int r;

        assert(f);
        assert(from || to);

        r = find_data_object_by_boot_id(f, boot_id, &o, &p);
        if (r <= 0)
                return r;

        if (le64toh(o->data.n_entries) <= 0)
                return 0;

        if (from) {
                r = journal_file_move_to_object(f, OBJECT_ENTRY, le64toh(o->data.entry_offset), &o);
                if (r < 0)
                        return r;

                *from = le64toh(o->entry.monotonic);
        }

        if (to) {
                r = journal_file_move_to_object(f, OBJECT_DATA, p, &o);
                if (r < 0)
                        return r;

                r = generic_array_get_plus_one(f,
                                               le64toh(o->data.entry_offset),
                                               le64toh(o->data.entry_array_offset),
                                               le64toh(o->data.n_entries)-1,
                                               &o, ((void*)0));
                if (r <= 0)
                        return r;

                *to = le64toh(o->entry.monotonic);
        }

        return 1;
}
