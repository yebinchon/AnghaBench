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

__attribute__((used)) static int
FUNC1(float threshold, float r, float g, float b)
{
	float rg_diff = FUNC0(r - g);
	float rb_diff = FUNC0(r - b);
	float gb_diff = FUNC0(g - b);
	return rg_diff > threshold || rb_diff > threshold || gb_diff > threshold;
}