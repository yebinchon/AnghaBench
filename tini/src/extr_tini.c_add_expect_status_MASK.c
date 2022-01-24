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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,long) ; 
 long STATUS_MAX ; 
 long STATUS_MIN ; 
 int /*<<< orphan*/  expect_status ; 
 long FUNC2 (char*,char**,int) ; 

int FUNC3(char* arg) {
	long status = 0;
	char* endptr = NULL;
	status = FUNC2(arg, &endptr, 10);

	if ((endptr == NULL) || (*endptr != 0)) {
		return 1;
	}

	if ((status < STATUS_MIN) || (status > STATUS_MAX)) {
		return 1;
	}

	FUNC0(expect_status, status);
	FUNC1(expect_status, status);
	return 0;
}