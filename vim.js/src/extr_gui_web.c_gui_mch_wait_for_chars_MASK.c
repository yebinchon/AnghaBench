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

/* Variables and functions */
 int FAIL ; 
 int OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 

int
FUNC2(int wtime)
{
    if(FUNC1())
        return OK;
    
    int t = 0;
    int step = 10;
    while(1)
    {
        FUNC0(step);
        if(FUNC1())
            return OK;
        t += step;
        if((wtime > -1) && (t >= wtime))
            return FAIL;
    }
}