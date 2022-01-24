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
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(void)
{
	if (FUNC0() < 0) {
#if defined(WIN32) || defined(_WINDOWS)
		(void) printf("Sorry, spooling isn't allowed until you run Setup.exe.\n");
#else
		(void) FUNC2("Sorry, spooling isn't allowed because this user requires that the NCFTPDIR\nenvironment variable be set to a directory to write datafiles to.\n");
#endif
		return (-1);
	} else if (FUNC1() == 0) {
#if defined(WIN32) || defined(_WINDOWS)
		(void) printf("Sorry, the \"ncftpbatch\" program could not be found.\nPlease re-run Setup to correct this problem.\n");
#else
		(void) FUNC2("Sorry, the \"ncftpbatch\" program could not be found.\nThis program must be installed and in your PATH in order to use this feature.\n");
#endif
		return (-1);
	}
	return (0);
}