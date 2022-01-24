#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_4__ {unsigned int n_bitmaps; int* bitmaps; int /*<<< orphan*/  bitmaps_allocated; } ;
typedef  TYPE_1__ Bitmap ;

/* Variables and functions */
 unsigned int BITMAPS_MAX_ENTRY ; 
 unsigned int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(Bitmap *b, unsigned n) {
        uint64_t bitmask;
        unsigned offset;

        FUNC4(b);

        /* we refuse to allocate huge bitmaps */
        if (n > BITMAPS_MAX_ENTRY)
                return -ERANGE;

        offset = FUNC0(n);

        if (offset >= b->n_bitmaps) {
                if (!FUNC2(b->bitmaps, b->bitmaps_allocated, offset + 1))
                        return -ENOMEM;

                b->n_bitmaps = offset + 1;
        }

        bitmask = FUNC3(1) << FUNC1(n);

        b->bitmaps[offset] |= bitmask;

        return 0;
}