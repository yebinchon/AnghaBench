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
struct timeval {double tv_sec; double tv_usec; } ;

/* Variables and functions */
 double FUNC0 (double) ; 

void
FUNC1(double d, struct timeval* tv)
{
  double sec = FUNC0(d);
  tv->tv_sec = sec;
  tv->tv_usec = (d-sec)*1000000;
}