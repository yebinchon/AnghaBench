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
 int FUNC0 (char const*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char) ; 

enum status_code
FUNC4(double *opt, const char *arg)
{
	int value = FUNC0(arg);

	if (!value && !FUNC2(*arg))
		return FUNC1("Invalid double or percentage");

	*opt = value;
	if (!FUNC3(arg, '%'))
		return SUCCESS;

	/* "Shift down" so 100% and 1 does not conflict. */
	*opt /= 100;
	if (*opt >= 1.0) {
		*opt = 0.99;
		return FUNC1("Percentage is larger than 100%%");
	}
	if (*opt < 0.0) {
		*opt = 1;
		return FUNC1("Percentage is less than 0%%");
	}
	return SUCCESS;
}