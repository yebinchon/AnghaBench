#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {char const* const magic; void* errNo; } ;
struct TYPE_14__ {TYPE_1__* first; } ;
struct TYPE_15__ {TYPE_2__ msg; } ;
struct TYPE_13__ {char* line; } ;
typedef  TYPE_3__* ResponsePtr ;
typedef  TYPE_4__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__* const,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__* const,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_4__* const,char* const,size_t const) ; 
 TYPE_3__* FUNC3 () ; 
 int FUNC4 (TYPE_4__* const,TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char* const,char*,size_t const) ; 
 int /*<<< orphan*/  kDontPerror ; 
 int kErrBadMagic ; 
 int kErrBadParameter ; 
 void* kErrCWDFailed ; 
 void* kErrInvalidDirParam ; 
 void* kErrMallocFailed ; 
 char* kLibraryMagic ; 
 int kNoErr ; 
 char* FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 (char const* const,char*) ; 
 char* FUNC8 (char*,char) ; 

int
FUNC9(const FTPCIPtr cip, const char *const cdCwd, char *const newCwd, const size_t newCwdSize)
{
	ResponsePtr rp;
	char *l, *r;
	int result;

	if (cip == NULL)
		return (kErrBadParameter);
	if (FUNC7(cip->magic, kLibraryMagic))
		return (kErrBadMagic);

	if ((newCwd == NULL) || (cdCwd == NULL)) {
		result = kErrInvalidDirParam;
		cip->errNo = kErrInvalidDirParam;
	} else {
		if (cdCwd[0] == '\0') {	/* But allow FTPChdir(cip, ".") to go through. */
			result = FUNC2(cip, newCwd, newCwdSize);
			return (result);
		}
		rp = FUNC3();
		if (rp == NULL) {
			result = kErrMallocFailed;
			cip->errNo = kErrMallocFailed;
			FUNC1(cip, kDontPerror, "Malloc failed.\n");
		} else {
			if (FUNC7(cdCwd, "..") == 0)
				result = FUNC4(cip, rp, "CDUP");
			else
				result = FUNC4(cip, rp, "CWD %s", cdCwd);
			if (result == 2) {
				l = FUNC6(rp->msg.first->line, '"');
				if ((l == rp->msg.first->line) && ((r = FUNC8(rp->msg.first->line, '"')) != NULL) && (l != r)) {
					/* "xxxx" is current directory.
					 * Strip out just the xxxx to copy into the remote cwd.
					 *
					 * This is nice because we didn't have to do a PWD.
					 */
					*r = '\0';
					++l;
					(void) FUNC5(newCwd, l, newCwdSize);
					*r = '"';	/* Restore, so response prints correctly. */
					FUNC0(cip, rp);
					result = kNoErr;
				} else {
					FUNC0(cip, rp);
					result = FUNC2(cip, newCwd, newCwdSize);
				}
			} else if (result > 0) {
				result = kErrCWDFailed;
				cip->errNo = kErrCWDFailed;
				FUNC0(cip, rp);
			} else {
				FUNC0(cip, rp);
			}
		}
	}
	return (result);
}