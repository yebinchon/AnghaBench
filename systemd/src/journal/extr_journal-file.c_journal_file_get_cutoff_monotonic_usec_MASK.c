#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usec_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  sd_id128_t ;
struct TYPE_8__ {int /*<<< orphan*/  monotonic; } ;
struct TYPE_7__ {int /*<<< orphan*/  n_entries; int /*<<< orphan*/  entry_array_offset; int /*<<< orphan*/  entry_offset; } ;
struct TYPE_9__ {TYPE_2__ entry; TYPE_1__ data; } ;
typedef  TYPE_3__ Object ;
typedef  int /*<<< orphan*/  JournalFile ;

/* Variables and functions */
 int /*<<< orphan*/  OBJECT_DATA ; 
 int /*<<< orphan*/  OBJECT_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__**,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,TYPE_3__**,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,TYPE_3__**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(JournalFile *f, sd_id128_t boot_id, usec_t *from, usec_t *to) {
        Object *o;
        uint64_t p;
        int r;

        FUNC0(*f);
        FUNC0(from || to);

        r = FUNC1(f, boot_id, &o, &p);
        if (r <= 0)
                return r;

        if (FUNC4(o->data.n_entries) <= 0)
                return 0;

        if (from) {
                r = FUNC3(f, OBJECT_ENTRY, FUNC4(o->data.entry_offset), &o);
                if (r < 0)
                        return r;

                *from = FUNC4(o->entry.monotonic);
        }

        if (to) {
                r = FUNC3(f, OBJECT_DATA, p, &o);
                if (r < 0)
                        return r;

                r = FUNC2(f,
                                               FUNC4(o->data.entry_offset),
                                               FUNC4(o->data.entry_array_offset),
                                               FUNC4(o->data.n_entries)-1,
                                               &o, NULL);
                if (r <= 0)
                        return r;

                *to = FUNC4(o->entry.monotonic);
        }

        return 1;
}