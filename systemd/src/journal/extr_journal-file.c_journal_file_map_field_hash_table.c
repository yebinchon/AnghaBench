
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {void* field_hash_table; int field_hash_table_size; struct TYPE_5__* header; int field_hash_table_offset; } ;
typedef TYPE_1__ JournalFile ;


 int OBJECT_FIELD_HASH_TABLE ;
 int assert (TYPE_1__*) ;
 int journal_file_move_to (TYPE_1__*,int ,int,int ,int ,void**,int *) ;
 int le64toh (int ) ;

int journal_file_map_field_hash_table(JournalFile *f) {
        uint64_t s, p;
        void *t;
        int r;

        assert(f);
        assert(f->header);

        if (f->field_hash_table)
                return 0;

        p = le64toh(f->header->field_hash_table_offset);
        s = le64toh(f->header->field_hash_table_size);

        r = journal_file_move_to(f,
                                 OBJECT_FIELD_HASH_TABLE,
                                 1,
                                 p, s,
                                 &t, ((void*)0));
        if (r < 0)
                return r;

        f->field_hash_table = t;
        return 0;
}
