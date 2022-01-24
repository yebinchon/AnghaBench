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
typedef  scalar_t__ u_int ;
struct screen {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct screen*) ; 
 scalar_t__ FUNC1 (struct screen*) ; 
 scalar_t__ FUNC2 (struct screen*) ; 

__attribute__((used)) static void
FUNC3(struct screen *s, u_int *fx, u_int *fy, int wrapflag)
{
	if (*fx == 0) {	/* left */
		if (*fy == 0) { /* top */
			if (wrapflag) {
				*fx = FUNC1(s) - 1;
				*fy = FUNC0(s) + FUNC2(s);
			}
			return;
		}
		*fx = FUNC1(s) - 1;
		*fy = *fy - 1;
	} else
		*fx = *fx - 1;
}