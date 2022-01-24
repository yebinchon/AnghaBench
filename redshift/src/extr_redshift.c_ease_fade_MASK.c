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
 double FUNC0 (double) ; 

__attribute__((used)) static double
FUNC1(double t)
{
	if (t <= 0) return 0;
	if (t >= 1) return 1;
	return 1.0042954579734844 * FUNC0(
		-6.4041738958415664 * FUNC0(-7.2908241330981340 * t));
}