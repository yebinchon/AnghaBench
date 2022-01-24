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
 double FUNC0 (int /*<<< orphan*/ ,double,double) ; 
 int /*<<< orphan*/  FUNC1 (double,double,double) ; 

double FUNC2(double x, double x_min, double x_max,
                                  double out_min, double out_max)
{
   return FUNC0(FUNC1(x,x_min,x_max),out_min,out_max);
}