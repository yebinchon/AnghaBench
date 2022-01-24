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
 scalar_t__ opt_diff_context ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__) ; 

const char *
FUNC1()
{
	static char opt_diff_context_arg[9]	= "";

	if (opt_diff_context < 0 ||
	    !FUNC0(opt_diff_context_arg, "-U%u", opt_diff_context))
		return "";

	return opt_diff_context_arg;
}