#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ connected; } ;
struct TYPE_12__ {char** cargv; int cargc; } ;
struct TYPE_11__ {int flags; int minargs; int maxargs; int /*<<< orphan*/  (* proc ) (int,char**,TYPE_1__*,TYPE_2__* const) ;} ;
typedef  TYPE_1__* CommandPtr ;
typedef  TYPE_2__* ArgvInfoPtr ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_7__ gConn ; 
 TYPE_1__* kAmbiguousCommand ; 
 int kCmdMustBeConnected ; 
 int kCmdMustBeDisconnected ; 
 TYPE_1__* kNoCommand ; 
 int kNoMax ; 
 int kNoMin ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char**,TYPE_1__*,TYPE_2__* const) ; 

__attribute__((used)) static int
FUNC4(const ArgvInfoPtr aip)
{
	CommandPtr cmdp;
	int flags;
	int cargc, cargcm1;

	cmdp = FUNC0(aip->cargv[0], 0);
	if (cmdp == kAmbiguousCommand) {
		(void) FUNC2("%s: ambiguous command name.\n", aip->cargv[0]);
		return (-1);
	} else if (cmdp == kNoCommand) {
		(void) FUNC2("%s: no such command.\n", aip->cargv[0]);
		return (-1);
	}

	cargc = aip->cargc;
	cargcm1 = cargc - 1;
	flags = cmdp->flags;

	if (((flags & kCmdMustBeConnected) != 0) && (gConn.connected == 0)) {
		(void) FUNC2("%s: must be connected to do that.\n", aip->cargv[0]);
	} else if (((flags & kCmdMustBeDisconnected) != 0) && (gConn.connected != 0)) {
		(void) FUNC2("%s: must be disconnected to do that.\n", aip->cargv[0]);
	} else if ((cmdp->minargs != kNoMin) && (cmdp->minargs > cargcm1)) {
		FUNC1(cmdp);
	} else if ((cmdp->maxargs != kNoMax) && (cmdp->maxargs < cargcm1)) {
		FUNC1(cmdp);
	} else {
		(*cmdp->proc)(cargc, aip->cargv, cmdp, aip);
	}
	return (0);
}