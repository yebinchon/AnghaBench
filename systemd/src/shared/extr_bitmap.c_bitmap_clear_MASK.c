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
struct TYPE_3__ {scalar_t__ bitmaps_allocated; scalar_t__ n_bitmaps; int /*<<< orphan*/  bitmaps; } ;
typedef  TYPE_1__ Bitmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(Bitmap *b) {
        if (!b)
                return;

        b->bitmaps = FUNC0(b->bitmaps);
        b->n_bitmaps = 0;
        b->bitmaps_allocated = 0;
}