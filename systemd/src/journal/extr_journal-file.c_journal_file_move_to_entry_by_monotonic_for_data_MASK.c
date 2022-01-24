#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  sd_id128_t ;
typedef  int /*<<< orphan*/  direction_t ;
struct TYPE_7__ {int /*<<< orphan*/  n_entries; int /*<<< orphan*/  entry_array_offset; int /*<<< orphan*/  entry_offset; } ;
struct TYPE_8__ {TYPE_1__ data; } ;
typedef  TYPE_2__ Object ;
typedef  int /*<<< orphan*/  JournalFile ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  OBJECT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_object_monotonic ; 
 int /*<<< orphan*/  test_object_offset ; 

int FUNC5(
                JournalFile *f,
                uint64_t data_offset,
                sd_id128_t boot_id,
                uint64_t monotonic,
                direction_t direction,
                Object **ret, uint64_t *offset) {

        Object *o, *d;
        int r;
        uint64_t b, z;

        FUNC0(f);

        /* First, seek by time */
        r = FUNC1(f, boot_id, &o, &b);
        if (r < 0)
                return r;
        if (r == 0)
                return -ENOENT;

        r = FUNC2(f,
                                          FUNC4(o->data.entry_offset),
                                          FUNC4(o->data.entry_array_offset),
                                          FUNC4(o->data.n_entries),
                                          monotonic,
                                          test_object_monotonic,
                                          direction,
                                          NULL, &z, NULL);
        if (r <= 0)
                return r;

        /* And now, continue seeking until we find an entry that
         * exists in both bisection arrays */

        for (;;) {
                Object *qo;
                uint64_t p, q;

                r = FUNC3(f, OBJECT_DATA, data_offset, &d);
                if (r < 0)
                        return r;

                r = FUNC2(f,
                                                  FUNC4(d->data.entry_offset),
                                                  FUNC4(d->data.entry_array_offset),
                                                  FUNC4(d->data.n_entries),
                                                  z,
                                                  test_object_offset,
                                                  direction,
                                                  NULL, &p, NULL);
                if (r <= 0)
                        return r;

                r = FUNC3(f, OBJECT_DATA, b, &o);
                if (r < 0)
                        return r;

                r = FUNC2(f,
                                                  FUNC4(o->data.entry_offset),
                                                  FUNC4(o->data.entry_array_offset),
                                                  FUNC4(o->data.n_entries),
                                                  p,
                                                  test_object_offset,
                                                  direction,
                                                  &qo, &q, NULL);

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