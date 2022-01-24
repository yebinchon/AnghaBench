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
typedef  int /*<<< orphan*/  fz_point ;

/* Variables and functions */
 float FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (float,float) ; 
 float FUNC2 (float) ; 

__attribute__((used)) static fz_point FUNC3(float angle, float x, float y)
{
	float ca = FUNC0(angle);
	float sa = FUNC2(angle);
	return FUNC1(x*ca - y*sa, x*sa + y*ca);
}