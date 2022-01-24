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
typedef  int u_int ;
struct screen {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct screen*) ; 
 int FUNC1 (struct screen*) ; 
 int FUNC2 (struct screen*) ; 

__attribute__((used)) static void
FUNC3(struct screen *s, u_int *fx, u_int *fy, int wrapflag)
{
	if (*fx == FUNC1(s) - 1) { /* right */
		if (*fy == FUNC0(s) + FUNC2(s)) { /* bottom */
			if (wrapflag) {
				*fx = 0;
				*fy = 0;
			}
			return;
		}
		*fx = 0;
		*fy = *fy + 1;
	} else
		*fx = *fx + 1;
}