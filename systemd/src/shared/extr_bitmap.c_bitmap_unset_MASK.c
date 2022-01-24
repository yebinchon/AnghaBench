#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_3__ {unsigned int n_bitmaps; int* bitmaps; } ;
typedef  TYPE_1__ Bitmap ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (int) ; 

void FUNC3(Bitmap *b, unsigned n) {
        uint64_t bitmask;
        unsigned offset;

        if (!b)
                return;

        offset = FUNC0(n);

        if (offset >= b->n_bitmaps)
                return;

        bitmask = FUNC2(1) << FUNC1(n);

        b->bitmaps[offset] &= ~bitmask;
}