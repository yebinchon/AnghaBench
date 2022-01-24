#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ dib_raw_t ;
typedef  int /*<<< orphan*/  HashmapBase ;

/* Variables and functions */
 scalar_t__ DIB_RAW_FREE ; 
 int IDX_NIL ; 
 scalar_t__* FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned FUNC2(HashmapBase *h, unsigned idx) {
        dib_raw_t *dibs;

        dibs = FUNC0(h);

        for ( ; idx < FUNC1(h); idx++)
                if (dibs[idx] != DIB_RAW_FREE)
                        return idx;

        return IDX_NIL;
}