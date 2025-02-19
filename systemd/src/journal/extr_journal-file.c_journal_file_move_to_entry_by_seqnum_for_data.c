
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int direction_t ;
struct TYPE_6__ {int n_entries; int entry_array_offset; int entry_offset; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
typedef TYPE_2__ Object ;
typedef int JournalFile ;


 int OBJECT_DATA ;
 int assert (int *) ;
 int generic_array_bisect_plus_one (int *,int ,int ,int ,int ,int ,int ,TYPE_2__**,int *,int *) ;
 int journal_file_move_to_object (int *,int ,int ,TYPE_2__**) ;
 int le64toh (int ) ;
 int test_object_seqnum ;

int journal_file_move_to_entry_by_seqnum_for_data(
                JournalFile *f,
                uint64_t data_offset,
                uint64_t seqnum,
                direction_t direction,
                Object **ret, uint64_t *offset) {

        Object *d;
        int r;

        assert(f);

        r = journal_file_move_to_object(f, OBJECT_DATA, data_offset, &d);
        if (r < 0)
                return r;

        return generic_array_bisect_plus_one(f,
                                             le64toh(d->data.entry_offset),
                                             le64toh(d->data.entry_array_offset),
                                             le64toh(d->data.n_entries),
                                             seqnum,
                                             test_object_seqnum,
                                             direction,
                                             ret, offset, ((void*)0));
}
