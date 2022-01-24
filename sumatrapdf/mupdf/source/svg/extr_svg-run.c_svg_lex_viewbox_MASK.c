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
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 char* FUNC2 (float*,char const*) ; 

__attribute__((used)) static void
FUNC3(const char *s, float *x, float *y, float *w, float *h)
{
	while (FUNC1(*s)) ++s;
	if (FUNC0(*s)) s = FUNC2(x, s);
	while (FUNC1(*s)) ++s;
	if (FUNC0(*s)) s = FUNC2(y, s);
	while (FUNC1(*s)) ++s;
	if (FUNC0(*s)) s = FUNC2(w, s);
	while (FUNC1(*s)) ++s;
	if (FUNC0(*s)) s = FUNC2(h, s);
}