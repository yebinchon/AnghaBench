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
typedef  int /*<<< orphan*/  WINDOW ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,size_t) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static bool
FUNC4(FILE *file, WINDOW *win, int y, char *buf, size_t bufsize)
{
	int read = FUNC1(win, y, 0, buf, bufsize);
	const char *out = read == ERR ? "" : FUNC2(buf);

	return read == ERR ? false : FUNC0(file, "%s\n", out) == FUNC3(out) + 1;
}