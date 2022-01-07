
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int direction_t ;
struct TYPE_5__ {int n_entries; struct TYPE_5__* header; int entry_array_offset; } ;
typedef int Object ;
typedef TYPE_1__ JournalFile ;


 int assert (TYPE_1__*) ;
 int generic_array_bisect (TYPE_1__*,int ,int ,int ,int ,int ,int **,int *,int *) ;
 int le64toh (int ) ;
 int test_object_realtime ;

int journal_file_move_to_entry_by_realtime(
                JournalFile *f,
                uint64_t realtime,
                direction_t direction,
                Object **ret,
                uint64_t *offset) {
        assert(f);
        assert(f->header);

        return generic_array_bisect(f,
                                    le64toh(f->header->entry_array_offset),
                                    le64toh(f->header->n_entries),
                                    realtime,
                                    test_object_realtime,
                                    direction,
                                    ret, offset, ((void*)0));
}
