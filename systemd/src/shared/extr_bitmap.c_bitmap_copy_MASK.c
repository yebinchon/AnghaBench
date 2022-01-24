#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  n_bitmaps; int /*<<< orphan*/  bitmaps_allocated; int /*<<< orphan*/  bitmaps; } ;
typedef  TYPE_1__ Bitmap ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uint64_t ; 

Bitmap *FUNC3(Bitmap *b) {
        Bitmap *ret;

        ret = FUNC0();
        if (!ret)
                return NULL;

        ret->bitmaps = FUNC2(uint64_t, b->bitmaps, b->n_bitmaps);
        if (!ret->bitmaps)
                return FUNC1(ret);

        ret->n_bitmaps = ret->bitmaps_allocated = b->n_bitmaps;
        return ret;
}