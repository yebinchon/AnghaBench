#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* lastFTPCmdResultStr; int /*<<< orphan*/  errNo; } ;
typedef  TYPE_1__* FTPCIPtr ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const* const,...) ; 
 int const kNoErr ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC2(const FTPCIPtr cip, const int err, const int eerr, const char *const s1, const char *const s2)
{
	if (err != kNoErr) {
		if (err == eerr) {
			if ((s2 == NULL) || (s2[0] == '\0')) {
				if ((s1 == NULL) || (s1[0] == '\0')) {
					(void) FUNC1(stderr, "server said: %s\n", cip->lastFTPCmdResultStr);
				} else {
					(void) FUNC1(stderr, "%s: server said: %s\n", s1, cip->lastFTPCmdResultStr);
				}
			} else if ((s1 == NULL) || (s1[0] == '\0')) {
				(void) FUNC1(stderr, "%s: server said: %s\n", s2, cip->lastFTPCmdResultStr);
			} else {
				(void) FUNC1(stderr, "%s %s: server said: %s\n", s1, s2, cip->lastFTPCmdResultStr);
			}
		} else {
			if ((s2 == NULL) || (s2[0] == '\0')) {
				if ((s1 == NULL) || (s1[0] == '\0')) {
					(void) FUNC1(stderr, "%s.\n", FUNC0(cip->errNo));
				} else {
					(void) FUNC1(stderr, "%s: %s.\n", s1, FUNC0(cip->errNo));
				}
			} else if ((s1 == NULL) || (s1[0] == '\0')) {
				(void) FUNC1(stderr, "%s: %s.\n", s2, FUNC0(cip->errNo));
			} else {
				(void) FUNC1(stderr, "%s %s: %s.\n", s1, s2, FUNC0(cip->errNo));
			}
		}
	}
}