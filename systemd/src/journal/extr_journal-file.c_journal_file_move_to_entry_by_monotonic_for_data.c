
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int sd_id128_t ;
typedef int direction_t ;
struct TYPE_7__ {int n_entries; int entry_array_offset; int entry_offset; } ;
struct TYPE_8__ {TYPE_1__ data; } ;
typedef TYPE_2__ Object ;
typedef int JournalFile ;


 int ENOENT ;
 int OBJECT_DATA ;
 int assert (int *) ;
 int find_data_object_by_boot_id (int *,int ,TYPE_2__**,scalar_t__*) ;
 int generic_array_bisect_plus_one (int *,int ,int ,int ,scalar_t__,int ,int ,TYPE_2__**,scalar_t__*,int *) ;
 int journal_file_move_to_object (int *,int ,scalar_t__,TYPE_2__**) ;
 int le64toh (int ) ;
 int test_object_monotonic ;
 int test_object_offset ;

int journal_file_move_to_entry_by_monotonic_for_data(
                JournalFile *f,
                uint64_t data_offset,
                sd_id128_t boot_id,
                uint64_t monotonic,
                direction_t direction,
                Object **ret, uint64_t *offset) {

        Object *o, *d;
        int r;
        uint64_t b, z;

        assert(f);


        r = find_data_object_by_boot_id(f, boot_id, &o, &b);
        if (r < 0)
                return r;
        if (r == 0)
                return -ENOENT;

        r = generic_array_bisect_plus_one(f,
                                          le64toh(o->data.entry_offset),
                                          le64toh(o->data.entry_array_offset),
                                          le64toh(o->data.n_entries),
                                          monotonic,
                                          test_object_monotonic,
                                          direction,
                                          ((void*)0), &z, ((void*)0));
        if (r <= 0)
                return r;




        for (;;) {
                Object *qo;
                uint64_t p, q;

                r = journal_file_move_to_object(f, OBJECT_DATA, data_offset, &d);
                if (r < 0)
                        return r;

                r = generic_array_bisect_plus_one(f,
                                                  le64toh(d->data.entry_offset),
                                                  le64toh(d->data.entry_array_offset),
                                                  le64toh(d->data.n_entries),
                                                  z,
                                                  test_object_offset,
                                                  direction,
                                                  ((void*)0), &p, ((void*)0));
                if (r <= 0)
                        return r;

                r = journal_file_move_to_object(f, OBJECT_DATA, b, &o);
                if (r < 0)
                        return r;

                r = generic_array_bisect_plus_one(f,
                                                  le64toh(o->data.entry_offset),
                                                  le64toh(o->data.entry_array_offset),
                                                  le64toh(o->data.n_entries),
                                                  p,
                                                  test_object_offset,
                                                  direction,
                                                  &qo, &q, ((void*)0));

                if (r <= 0)
                        return r;

                if (p == q) {
                        if (ret)
                                *ret = qo;
                        if (offset)
                                *offset = q;

                        return 1;
                }

                z = q;
        }
}
