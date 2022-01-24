#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_16__ {scalar_t__ total; scalar_t__ array; } ;
struct TYPE_15__ {int /*<<< orphan*/  chain_cache; } ;
struct TYPE_13__ {int /*<<< orphan*/ * items; int /*<<< orphan*/  next_entry_array_offset; } ;
struct TYPE_14__ {TYPE_1__ entry_array; } ;
typedef  TYPE_2__ Object ;
typedef  TYPE_3__ JournalFile ;
typedef  TYPE_4__ ChainCacheItem ;

/* Variables and functions */
 int /*<<< orphan*/  OBJECT_ENTRY ; 
 int /*<<< orphan*/  OBJECT_ENTRY_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,TYPE_2__**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC6(
                JournalFile *f,
                uint64_t first,
                uint64_t i,
                Object **ret, uint64_t *offset) {

        Object *o;
        uint64_t p = 0, a, t = 0;
        int r;
        ChainCacheItem *ci;

        FUNC0(f);

        a = first;

        /* Try the chain cache first */
        ci = FUNC5(f->chain_cache, &first);
        if (ci && i > ci->total) {
                a = ci->array;
                i -= ci->total;
                t = ci->total;
        }

        while (a > 0) {
                uint64_t k;

                r = FUNC3(f, OBJECT_ENTRY_ARRAY, a, &o);
                if (r < 0)
                        return r;

                k = FUNC2(o);
                if (i < k) {
                        p = FUNC4(o->entry_array.items[i]);
                        goto found;
                }

                i -= k;
                t += k;
                a = FUNC4(o->entry_array.next_entry_array_offset);
        }

        return 0;

found:
        /* Let's cache this item for the next invocation */
        FUNC1(f->chain_cache, ci, first, a, FUNC4(o->entry_array.items[0]), t, i);

        r = FUNC3(f, OBJECT_ENTRY, p, &o);
        if (r < 0)
                return r;

        if (ret)
                *ret = o;

        if (offset)
                *offset = p;

        return 1;
}