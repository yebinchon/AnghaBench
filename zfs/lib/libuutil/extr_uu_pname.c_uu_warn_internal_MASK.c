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
 char* ERRNO_FMT ; 
 char* PNAME_FMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pname ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(int err, const char *format, va_list alist)
{
	if (pname != NULL)
		(void) FUNC0(stderr, PNAME_FMT, pname);

	(void) FUNC3(stderr, format, alist);

	if (FUNC2(format, '\n') == NULL)
		(void) FUNC0(stderr, ERRNO_FMT, FUNC1(err));
}