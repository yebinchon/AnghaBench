
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int sd_id128_t ;
typedef int direction_t ;
struct TYPE_6__ {int n_entries; int entry_array_offset; int entry_offset; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
typedef TYPE_2__ Object ;
typedef int JournalFile ;


 int ENOENT ;
 int assert (int *) ;
 int find_data_object_by_boot_id (int *,int ,TYPE_2__**,int *) ;
 int generic_array_bisect_plus_one (int *,int ,int ,int ,int ,int ,int ,TYPE_2__**,int *,int *) ;
 int le64toh (int ) ;
 int test_object_monotonic ;

int journal_file_move_to_entry_by_monotonic(
                JournalFile *f,
                sd_id128_t boot_id,
                uint64_t monotonic,
                direction_t direction,
                Object **ret,
                uint64_t *offset) {

        Object *o;
        int r;

        assert(f);

        r = find_data_object_by_boot_id(f, boot_id, &o, ((void*)0));
        if (r < 0)
                return r;
        if (r == 0)
                return -ENOENT;

        return generic_array_bisect_plus_one(f,
                                             le64toh(o->data.entry_offset),
                                             le64toh(o->data.entry_array_offset),
                                             le64toh(o->data.n_entries),
                                             monotonic,
                                             test_object_monotonic,
                                             direction,
                                             ret, offset, ((void*)0));
}
