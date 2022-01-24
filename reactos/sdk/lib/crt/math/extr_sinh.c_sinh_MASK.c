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

double FUNC1(double x)
{
 if(x >= 0.0)
 {
   const double epos = FUNC0(x);
   return (epos - 1.0/epos) / 2.0;
 }
 else
 {
   const double eneg = FUNC0(-x);
   return (1.0/eneg - eneg) / 2.0;
 }
}