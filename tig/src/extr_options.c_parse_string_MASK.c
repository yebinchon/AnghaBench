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
 int ERROR_UNMATCHED_QUOTATION ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,char const*,int) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static enum status_code
FUNC2(char *opt, const char *arg, size_t optsize)
{
	int arglen = FUNC1(arg);

	switch (arg[0]) {
	case '\"':
	case '\'':
		if (arglen == 1 || arg[arglen - 1] != arg[0])
			return ERROR_UNMATCHED_QUOTATION;
		arg += 1; arglen -= 2;
		/* Fall-through */
	default:
		FUNC0(opt, optsize, arg, arglen);
		return SUCCESS;
	}
}