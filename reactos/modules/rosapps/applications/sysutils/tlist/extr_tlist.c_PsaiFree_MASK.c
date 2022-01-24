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
typedef  int /*<<< orphan*/  SIZE_T ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_RELEASE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(void *ptr)
{
 SIZE_T nSize = 0;

 FUNC1(FUNC0(), &ptr, &nSize, MEM_RELEASE);
}