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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,size_t) ; 

void *FUNC4(size_t size)
{
    void *res;

    FUNC0(size > 0);
    res = FUNC2(size);
    if(res == NULL)
    {
	FUNC1("Virtual memory exhausted.\n");
    }
    FUNC3(res, 0x55, size);
    return res;
}