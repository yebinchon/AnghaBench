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
struct stat {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/ ) ; 
 char* gOurDirectoryPath ; 
 int /*<<< orphan*/  kSpoolDir ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,struct stat*) ; 

int
FUNC4(char *sdir, size_t size)
{
	struct stat st;
	*sdir = '\0';

	/* Don't create in root directory. */
	if (gOurDirectoryPath[0] != '\0') {
		(void) FUNC1(sdir, size, kSpoolDir);
		if ((FUNC3(sdir, &st) < 0) && (FUNC0(sdir, 00700) < 0)) {
			FUNC2(sdir);
			return (-1);
		} else {
			return (0);
		}
	}
	return (-1);
}