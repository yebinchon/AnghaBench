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
 char const** fz_intent_names ; 
 scalar_t__ FUNC0 (char const**) ; 

const char *FUNC1(int ri)
{
	if (ri >= 0 && ri < (int)FUNC0(fz_intent_names))
		return fz_intent_names[ri];
	return "RelativeColorimetric";
}