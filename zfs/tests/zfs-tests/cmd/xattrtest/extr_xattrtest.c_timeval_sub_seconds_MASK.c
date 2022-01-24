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
struct timeval {double tv_sec; scalar_t__ tv_usec; } ;

/* Variables and functions */
 double USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,struct timeval*,struct timeval*) ; 

__attribute__((used)) static double
FUNC1(struct timeval *tv1, struct timeval *tv2)
{
	struct timeval delta;

	FUNC0(&delta, tv1, tv2);
	return ((double)delta.tv_usec / USEC_PER_SEC + delta.tv_sec);
}