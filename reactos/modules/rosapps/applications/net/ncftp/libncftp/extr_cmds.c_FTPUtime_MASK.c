#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  mstr ;
typedef  int /*<<< orphan*/  cstr ;
typedef  int /*<<< orphan*/  astr ;
struct TYPE_11__ {scalar_t__ hasUTIME; void* errNo; int /*<<< orphan*/  magic; } ;
struct TYPE_10__ {int /*<<< orphan*/  code; } ;
typedef  TYPE_1__* ResponsePtr ;
typedef  TYPE_2__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__* const,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__* const,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 int FUNC4 (TYPE_2__* const,TYPE_1__*,char*,char const* const,char*,char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ kCommandAvailable ; 
 scalar_t__ kCommandNotAvailable ; 
 int /*<<< orphan*/  kDontPerror ; 
 int kErrBadMagic ; 
 int kErrBadParameter ; 
 void* kErrMallocFailed ; 
 void* kErrUTIMEFailed ; 
 void* kErrUTIMENotAvailable ; 
 int /*<<< orphan*/  kLibraryMagic ; 
 int kNoErr ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(const FTPCIPtr cip, const char *const file, time_t actime, time_t modtime, time_t crtime)
{
	char mstr[64], astr[64], cstr[64];
	int result;
	ResponsePtr rp;

	if (cip == NULL)
		return (kErrBadParameter);
	if (FUNC6(cip->magic, kLibraryMagic))
		return (kErrBadMagic);

	if (cip->hasUTIME == kCommandNotAvailable) {
		cip->errNo = kErrUTIMENotAvailable;
		result = kErrUTIMENotAvailable;
	} else {
		if ((actime == (time_t) 0) || (actime == (time_t) -1))
			(void) FUNC7(&actime);
		if ((modtime == (time_t) 0) || (modtime == (time_t) -1))
			(void) FUNC7(&modtime);
		if ((crtime == (time_t) 0) || (crtime == (time_t) -1))
			crtime = modtime;

		(void) FUNC2(astr, sizeof(astr), actime);
		(void) FUNC2(mstr, sizeof(mstr), modtime);
		(void) FUNC2(cstr, sizeof(cstr), crtime);

		rp = FUNC3();
		if (rp == NULL) {
			result = kErrMallocFailed;
			cip->errNo = kErrMallocFailed;
			FUNC1(cip, kDontPerror, "Malloc failed.\n");
		} else {
			result = FUNC4(cip, rp, "SITE UTIME %s %s %s %s UTC", file, astr, mstr, cstr);
			if (result < 0) {
				FUNC0(cip, rp);
				return (result);
			} else if (result == 2) {
				cip->hasUTIME = kCommandAvailable;
				result = kNoErr;
			} else if (FUNC5(rp->code)) {
				cip->hasUTIME = kCommandNotAvailable;
				cip->errNo = kErrUTIMENotAvailable;
				result = kErrUTIMENotAvailable;
			} else {
				cip->errNo = kErrUTIMEFailed;
				result = kErrUTIMEFailed;
			}
			FUNC0(cip, rp);
		}
	}
	return (result);
}