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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ intset ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t FUNC2(intset *is, int64_t value, uint32_t *pos) {
    int min = 0, max = FUNC1(is->length)-1, mid = -1;
    int64_t cur = -1;

    /* The value can never be found when the set is empty */
    if (FUNC1(is->length) == 0) {
        if (pos) *pos = 0;
        return 0;
    } else {
        /* Check for the case where we know we cannot find the value,
         * but do know the insert position. */
        if (value > FUNC0(is,max)) {
            if (pos) *pos = FUNC1(is->length);
            return 0;
        } else if (value < FUNC0(is,0)) {
            if (pos) *pos = 0;
            return 0;
        }
    }

    while(max >= min) {
        mid = ((unsigned int)min + (unsigned int)max) >> 1;
        cur = FUNC0(is,mid);
        if (value > cur) {
            min = mid+1;
        } else if (value < cur) {
            max = mid-1;
        } else {
            break;
        }
    }

    if (value == cur) {
        if (pos) *pos = mid;
        return 1;
    } else {
        if (pos) *pos = min;
        return 0;
    }
}