#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int errNo; int /*<<< orphan*/  magic; } ;
struct TYPE_11__ {int codeType; } ;
typedef  TYPE_1__* ResponsePtr ;
typedef  TYPE_2__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__* const,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__* const,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_2__* const,TYPE_1__*) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  kDontPerror ; 
 int kErrBadMagic ; 
 int kErrBadParameter ; 
 int kErrDataTransferFailed ; 
 int kErrMallocFailed ; 
 int /*<<< orphan*/  kLibraryMagic ; 
 int kNoErr ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(const FTPCIPtr cip, int didXfer)
{
	int result;
	int respCode;
	ResponsePtr rp;

	if (cip == NULL)
		return (kErrBadParameter);
	if (FUNC5(cip->magic, kLibraryMagic))
		return (kErrBadMagic);

	FUNC0(cip);
	result = kNoErr;
	if (didXfer) {
		/* Get the response to the data transferred.  Most likely a message
		 * saying that the transfer completed succesfully.  However, if
		 * we tried to abort the transfer using ABOR, we will have a response
		 * to that command instead.
		 */
		rp = FUNC4();
		if (rp == NULL) {
			FUNC2(cip, kDontPerror, "Malloc failed.\n");
			cip->errNo = kErrMallocFailed;
			result = cip->errNo;
			return (result);
		}
		result = FUNC3(cip, rp);
		if (result < 0)
			return (result);
		respCode = rp->codeType;
		FUNC1(cip, rp);
		if (respCode != 2) {
			cip->errNo = kErrDataTransferFailed;
			result = cip->errNo;
		} else {
			result = kNoErr;
		}
	}
	return (result);
}