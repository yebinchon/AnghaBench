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
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int VIS_CSTYLE ; 
 int VIS_NL ; 
 int VIS_OCTAL ; 
 int VIS_TAB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,long long,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * log_file ; 
 int FUNC5 (char**,char*,int) ; 
 int FUNC6 (char**,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(const char *msg, va_list ap)
{
	char		*fmt, *out;
	struct timeval	 tv;

	if (log_file == NULL)
		return;

	if (FUNC6(&fmt, msg, ap) == -1)
		FUNC0(1);
	if (FUNC5(&out, fmt, VIS_OCTAL|VIS_CSTYLE|VIS_TAB|VIS_NL) == -1)
		FUNC0(1);

	FUNC4(&tv, NULL);
	if (FUNC2(log_file, "%lld.%06d %s\n", (long long)tv.tv_sec,
	    (int)tv.tv_usec, out) == -1)
		FUNC0(1);
	FUNC1(log_file);

	FUNC3(out);
	FUNC3(fmt);
}