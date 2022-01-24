#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ loggedIn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 TYPE_1__ gConn ; 
 int /*<<< orphan*/  gRemoteCWD ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char*,char*,...) ; 
 char* tcap_boldface ; 
 char* tcap_normal ; 

void
FUNC4(char *dst, size_t dsize)
{
	char acwd[64];

#	ifdef HAVE_SNPRINTF
	if (gConn.loggedIn != 0) {
		AbbrevStr(acwd, gRemoteCWD, 25, 0);
		snprintf(dst, dsize, "%sncftp%s %s %s>%s ",
			tcap_boldface, tcap_normal, acwd,
			tcap_boldface, tcap_normal);
	} else {
		snprintf(dst, dsize, "%sncftp%s> ",
			tcap_boldface, tcap_normal);
	}
#	else	/* HAVE_SNPRINTF */
	(void) FUNC2(dst, tcap_boldface, dsize);
	(void) FUNC1(dst, "ncftp", dsize);
	(void) FUNC1(dst, tcap_normal, dsize);
	if (gConn.loggedIn != 0) {
		FUNC0(acwd, gRemoteCWD, 25, 0);
		(void) FUNC1(dst, " ", dsize);
		(void) FUNC1(dst, acwd, dsize);
		(void) FUNC1(dst, " ", dsize);
	}
	(void) FUNC1(dst, tcap_boldface, dsize);
	(void) FUNC1(dst, ">", dsize);
	(void) FUNC1(dst, tcap_normal, dsize);
	(void) FUNC1(dst, " ", dsize);
#	endif	/* HAVE_SNPRINTF */
}