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
 int FUNC0 (int) ; 
 float FUNC1 (float) ; 

int FUNC2(float x, float y, float delta, int max_ulps)
{
   if (FUNC1(x-y) <= delta) return 1;
   if (FUNC0(*(int *)&x - *(int *)&y) <= max_ulps) return 1;
   return 0;
}