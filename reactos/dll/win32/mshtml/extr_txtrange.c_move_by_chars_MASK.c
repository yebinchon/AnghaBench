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
typedef  int /*<<< orphan*/  rangepoint_t ;
typedef  scalar_t__ LONG ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static LONG FUNC2(rangepoint_t *iter, LONG cnt)
{
    LONG ret = 0;

    if(cnt >= 0) {
        while(ret < cnt && FUNC0(iter))
            ret++;
    }else {
        while(ret > cnt && FUNC1(iter))
            ret--;
    }

    return ret;
}