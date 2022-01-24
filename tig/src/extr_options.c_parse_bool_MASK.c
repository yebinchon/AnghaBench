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
typedef  enum status_code { ____Placeholder_status_code } status_code ;

/* Variables and functions */
 int SUCCESS ; 
 int FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static enum status_code
FUNC2(bool *opt, const char *arg)
{
	*opt = (!FUNC1(arg, "1") || !FUNC1(arg, "true") || !FUNC1(arg, "yes"))
		? true : false;
	if (*opt || !FUNC1(arg, "0") || !FUNC1(arg, "false") || !FUNC1(arg, "no"))
		return SUCCESS;
	return FUNC0("Non-boolean value treated as false: %s", arg);
}