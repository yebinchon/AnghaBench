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
typedef  scalar_t__ longest_int ;
struct TYPE_16__ {scalar_t__ hasSIZE; void* errNo; int /*<<< orphan*/  magic; } ;
struct TYPE_14__ {TYPE_1__* first; } ;
struct TYPE_15__ {int /*<<< orphan*/  code; TYPE_2__ msg; } ;
struct TYPE_13__ {int /*<<< orphan*/  line; } ;
typedef  TYPE_3__* ResponsePtr ;
typedef  TYPE_4__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__* const,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__* const,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_4__* const,int const) ; 
 TYPE_3__* FUNC3 () ; 
 int FUNC4 (TYPE_4__* const,TYPE_3__*,char*,char const* const) ; 
 char* SCANF_LONG_LONG ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ kCommandAvailable ; 
 scalar_t__ kCommandNotAvailable ; 
 int /*<<< orphan*/  kDontPerror ; 
 int kErrBadMagic ; 
 int kErrBadParameter ; 
 void* kErrMallocFailed ; 
 void* kErrSIZEFailed ; 
 void* kErrSIZENotAvailable ; 
 int /*<<< orphan*/  kLibraryMagic ; 
 int kNoErr ; 
 scalar_t__ kSizeUnknown ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__* const) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC9(const FTPCIPtr cip, const char *const file, longest_int *const size, const int type)
{
	int result;
	ResponsePtr rp;

	if (cip == NULL)
		return (kErrBadParameter);
	if (FUNC7(cip->magic, kLibraryMagic))
		return (kErrBadMagic);

	if ((size == NULL) || (file == NULL))
		return (kErrBadParameter);
	*size = kSizeUnknown;

	result = FUNC2(cip, type);
	if (result < 0)
		return (result);

	if (cip->hasSIZE == kCommandNotAvailable) {
		cip->errNo = kErrSIZENotAvailable;
		result = kErrSIZENotAvailable;
	} else {
		rp = FUNC3();
		if (rp == NULL) {
			result = kErrMallocFailed;
			cip->errNo = kErrMallocFailed;
			FUNC1(cip, kDontPerror, "Malloc failed.\n");
		} else {
			result = FUNC4(cip, rp, "SIZE %s", file);
			if (result < 0) {
				FUNC0(cip, rp);
				return (result);
			} else if (result == 2) {
#if defined(HAVE_LONG_LONG) && defined(SCANF_LONG_LONG)
				(void) sscanf(rp->msg.first->line, SCANF_LONG_LONG, size);
#elif defined(HAVE_LONG_LONG) && defined(HAVE_STRTOQ)
				*size = (longest_int) strtoq(rp->msg.first->line, NULL, 0);
#else
				(void) FUNC6(rp->msg.first->line, "%ld", size);
#endif
				cip->hasSIZE = kCommandAvailable;
				result = kNoErr;
			} else if (FUNC5(rp->code)) {
				cip->hasSIZE = kCommandNotAvailable;
				cip->errNo = kErrSIZENotAvailable;
				result = kErrSIZENotAvailable;
			} else {
				cip->errNo = kErrSIZEFailed;
				result = kErrSIZEFailed;
			}
			FUNC0(cip, rp);
		}
	}
	return (result);
}