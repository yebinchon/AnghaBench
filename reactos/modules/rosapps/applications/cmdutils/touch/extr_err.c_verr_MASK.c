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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 char* __progname ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

void
FUNC4(int eval, const char *fmt, va_list ap)
{
	int sverrno;

	sverrno = errno;
	(void)FUNC1(stderr, "%s: ", __progname);
	if (fmt != NULL) {
		(void)FUNC3(stderr, fmt, ap);
		(void)FUNC1(stderr, ": ");
	}
	(void)FUNC1(stderr, "%s\n", FUNC2(sverrno));
	FUNC0(eval);
}