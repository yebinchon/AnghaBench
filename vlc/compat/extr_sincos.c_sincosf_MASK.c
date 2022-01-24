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
 float FUNC0 (float) ; 
 float FUNC1 (float) ; 

void FUNC2(float r, float *restrict sr, float *restrict cr)
{
    *sr = FUNC1(r);
    *cr = FUNC0(r);
}