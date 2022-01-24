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
 int /*<<< orphan*/  FUNC0 (float,float) ; 
 int /*<<< orphan*/  FUNC1 (float,float) ; 

void FUNC2(float x0, float y0, float x1, float y1, float s0, float t0, float s1, float t1)
{
   FUNC0(s0,t0); FUNC1(x0,y0);
   FUNC0(s1,t0); FUNC1(x1,y0);
   FUNC0(s1,t1); FUNC1(x1,y1);
   FUNC0(s0,t1); FUNC1(x0,y1);
}