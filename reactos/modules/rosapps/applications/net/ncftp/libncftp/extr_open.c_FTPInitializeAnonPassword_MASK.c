#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* defaultAnonPassword; scalar_t__ htried; char* ourHostName; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__* FTPLIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  kLibraryMagic ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(const FTPLIPtr lip)
{
	if (lip == NULL)
		return;
	if (FUNC4(lip->magic, kLibraryMagic))
		return;

	FUNC0(lip);

	if (lip->defaultAnonPassword[0] == '\0') {
#ifdef SPAM_PROBLEM_HAS_BEEN_SOLVED_FOREVER
		GetUsrName(lip->defaultAnonPassword, sizeof(lip->defaultAnonPassword));
		(void) STRNCAT(lip->defaultAnonPassword, "@");

		/* Default to the "user@" notation
		 * supported by NcFTPd and wu-ftpd.
		 */
		if (lip->htried > 0)
			(void) STRNCAT(lip->defaultAnonPassword, lip->ourHostName);
#else
		(void) FUNC3(lip->defaultAnonPassword, "NcFTP@");
#endif
	}
}