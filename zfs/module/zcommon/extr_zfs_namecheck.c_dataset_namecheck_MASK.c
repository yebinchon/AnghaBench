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
typedef  int /*<<< orphan*/  namecheck_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  NAME_ERR_INVALCHAR ; 
 int FUNC0 (char const*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char) ; 

int
FUNC2(const char *path, namecheck_err_t *why, char *what)
{
	int ret = FUNC0(path, why, what);

	if (ret == 0 && FUNC1(path, '#') != NULL) {
		if (why != NULL) {
			*why = NAME_ERR_INVALCHAR;
			*what = '#';
		}
		return (-1);
	}

	return (ret);
}