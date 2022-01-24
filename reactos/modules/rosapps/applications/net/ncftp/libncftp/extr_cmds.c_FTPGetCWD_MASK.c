#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {void* errNo; int /*<<< orphan*/  magic; } ;
struct TYPE_13__ {TYPE_1__* first; } ;
struct TYPE_14__ {TYPE_2__ msg; } ;
struct TYPE_12__ {char* line; } ;
typedef  TYPE_3__* ResponsePtr ;
typedef  TYPE_4__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__* const,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__* const,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC2 () ; 
 int FUNC3 (TYPE_4__* const,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char* const,char*,size_t const) ; 
 int /*<<< orphan*/  kDontPerror ; 
 int kErrBadMagic ; 
 int kErrBadParameter ; 
 void* kErrInvalidDirParam ; 
 void* kErrMallocFailed ; 
 void* kErrPWDFailed ; 
 int /*<<< orphan*/  kLibraryMagic ; 
 int kNoErr ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char) ; 

int
FUNC8(const FTPCIPtr cip, char *const newCwd, const size_t newCwdSize)
{
	ResponsePtr rp;
	char *l, *r;
	int result;

	if (cip == NULL)
		return (kErrBadParameter);
	if (FUNC6(cip->magic, kLibraryMagic))
		return (kErrBadMagic);

	if ((newCwd == NULL) || (newCwdSize == 0)) {
		result = kErrInvalidDirParam;
		cip->errNo = kErrInvalidDirParam;
	} else {
		rp = FUNC2();
		if (rp == NULL) {
			result = kErrMallocFailed;
			cip->errNo = kErrMallocFailed;
			FUNC1(cip, kDontPerror, "Malloc failed.\n");
		} else {
			result = FUNC3(cip, rp, "PWD");
			if (result == 2) {
				if ((r = FUNC7(rp->msg.first->line, '"')) != NULL) {
					/* "xxxx" is current directory.
					 * Strip out just the xxxx to copy into the remote cwd.
					 */
					l = FUNC5(rp->msg.first->line, '"');
					if ((l != NULL) && (l != r)) {
						*r = '\0';
						++l;
						(void) FUNC4(newCwd, l, newCwdSize);
						*r = '"';	/* Restore, so response prints correctly. */
					}
				} else {
					/* xxxx is current directory.
					 * Mostly for VMS.
					 */
					if ((r = FUNC5(rp->msg.first->line, ' ')) != NULL) {
						*r = '\0';
						(void) FUNC4(newCwd, (rp->msg.first->line), newCwdSize);
						*r = ' ';	/* Restore, so response prints correctly. */
					}
				}
				result = kNoErr;
			} else if (result > 0) {
				result = kErrPWDFailed;
				cip->errNo = kErrPWDFailed;
			}
			FUNC0(cip, rp);
		}
	}
	return (result);
}