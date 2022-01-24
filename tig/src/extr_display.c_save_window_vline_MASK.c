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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,size_t) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static bool
FUNC4(FILE *file, WINDOW *left, WINDOW *right, int y, char *buf, size_t bufsize)
{
	int read1 = FUNC1(left, y, 0, buf, bufsize);
	int read2 = read1 == ERR ? ERR : FUNC1(right, y, 0, buf + read1 + 1, bufsize - read1 - 1);

	if (read2 == ERR)
		return false;
	buf[read1] = '|';
	buf = FUNC2(buf);

	return FUNC0(file, "%s\n", FUNC2(buf)) == FUNC3(buf) + 1;
}