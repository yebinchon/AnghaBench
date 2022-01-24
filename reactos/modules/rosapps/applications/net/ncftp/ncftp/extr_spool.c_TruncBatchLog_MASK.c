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
typedef  scalar_t__ time_t ;
struct stat {scalar_t__ st_mtime; } ;
typedef  int /*<<< orphan*/  f ;

/* Variables and functions */
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* gOurDirectoryPath ; 
 int /*<<< orphan*/  kSpoolLog ; 
 int FUNC2 (char*,int,int) ; 
 scalar_t__ FUNC3 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 

void
FUNC5(void)
{
	char f[256];
	struct stat st;
	time_t t;
	int fd;

	if (gOurDirectoryPath[0] != '\0') {
		FUNC4(&t);
		t -= 86400;
		(void) FUNC0(f, sizeof(f), kSpoolLog);
		if ((FUNC3(f, &st) == 0) && (st.st_mtime < t)) {
			/* Truncate old log file.
			 * Do not remove it, since a process
			 * could still conceivably be going.
			 */
			fd = FUNC2(f, O_WRONLY|O_TRUNC, 00600);
			if (fd >= 0)
				FUNC1(fd);
		}
	}
}