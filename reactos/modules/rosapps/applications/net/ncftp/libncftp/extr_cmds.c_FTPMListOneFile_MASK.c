#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ hasMLST; scalar_t__ serverType; int ietfCompatLevel; int errNo; } ;
struct TYPE_15__ {TYPE_2__* first; } ;
struct TYPE_16__ {int /*<<< orphan*/  code; TYPE_3__ msg; } ;
struct TYPE_14__ {TYPE_1__* next; int /*<<< orphan*/ * line; } ;
struct TYPE_13__ {int /*<<< orphan*/ * line; } ;
typedef  TYPE_4__* ResponsePtr ;
typedef  int /*<<< orphan*/  MLstItemPtr ;
typedef  TYPE_5__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__* const,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__* const,int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* FUNC2 () ; 
 int FUNC3 (TYPE_5__* const,TYPE_4__*,char*,char const* const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 scalar_t__ kCommandNotAvailable ; 
 int /*<<< orphan*/  kDontPerror ; 
 int kErrInvalidMLSTResponse ; 
 void* kErrMLSTFailed ; 
 void* kErrMLSTNotAvailable ; 
 int kErrMallocFailed ; 
 scalar_t__ kServerTypeNcFTPd ; 
 scalar_t__ kServerTypeRoxen ; 

int
FUNC6(const FTPCIPtr cip, const char *const file, const MLstItemPtr mlip)
{
	int result;
	ResponsePtr rp;

	/* We do a special check for older versions of NcFTPd which
	 * are based off of an incompatible previous version of IETF
	 * extensions.
	 *
	 * Roxen also seems to be way outdated, where MLST was on the
	 * data connection among other things.
	 *
	 */
	if (
		(cip->hasMLST == kCommandNotAvailable) ||
		((cip->serverType == kServerTypeNcFTPd) && (cip->ietfCompatLevel < 19981201)) ||
		(cip->serverType == kServerTypeRoxen)
	) {
		cip->errNo = kErrMLSTNotAvailable;
		return (cip->errNo);
	}

	rp = FUNC2();
	if (rp == NULL) {
		result = cip->errNo = kErrMallocFailed;
		FUNC1(cip, kDontPerror, "Malloc failed.\n");
	} else {
		result = FUNC3(cip, rp, "MLST %s", file);
		if (
			(result == 2) &&
			(rp->msg.first->line != NULL) &&
			(rp->msg.first->next != NULL) &&
			(rp->msg.first->next->line != NULL)
		) {
			result = FUNC5(rp->msg.first->next->line, mlip);
			if (result < 0) {
				cip->errNo = result = kErrInvalidMLSTResponse;
			}
		} else if (FUNC4(rp->code)) {
			cip->hasMLST = kCommandNotAvailable;
			cip->errNo = kErrMLSTNotAvailable;
			result = kErrMLSTNotAvailable;
		} else {
			cip->errNo = kErrMLSTFailed;
			result = kErrMLSTFailed;
		}
		FUNC0(cip, rp);
	}

	return (result);
}