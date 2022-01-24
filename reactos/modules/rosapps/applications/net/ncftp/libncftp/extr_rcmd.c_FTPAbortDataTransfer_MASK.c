#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ dataSocket; scalar_t__ abortTimeout; int errNo; } ;
typedef  int /*<<< orphan*/ * ResponsePtr ;
typedef  TYPE_1__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_1__* const,char*) ; 
 int FUNC4 (TYPE_1__* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__* const,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__* const,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__* const,unsigned int) ; 
 scalar_t__ kClosedFileDescriptor ; 
 int /*<<< orphan*/  kDontPerror ; 
 int kErrMallocFailed ; 
 int kNoErr ; 

void
FUNC10(const FTPCIPtr cip)
{
	ResponsePtr rp;
	int result;

	if (cip->dataSocket != kClosedFileDescriptor) {
		FUNC6(cip, "Starting abort sequence.\n");
		FUNC7(cip);		/* Probably could get by w/o doing this. */

		result = FUNC3(cip, "ABOR");
		if (result != kNoErr) {
			/* Linger could cause close to block, so unset it. */
			(void) FUNC8(cip, cip->dataSocket, 0);
			FUNC0(cip);
			FUNC6(cip, "Could not send abort command.\n");
			return;
		}

		if (cip->abortTimeout > 0) {
			result = FUNC9(cip, (unsigned int) cip->abortTimeout);
			if (result <= 0) {
				/* Error or no response received to ABOR in time. */
				(void) FUNC8(cip, cip->dataSocket, 0);
				FUNC0(cip);
				FUNC6(cip, "No response received to abort request.\n");
				return;
			}
		}

		rp = FUNC5();
		if (rp == NULL) {
			FUNC2(cip, kDontPerror, "Malloc failed.\n");
			cip->errNo = kErrMallocFailed;
			result = cip->errNo;
			return;
		}

		result = FUNC4(cip, rp);
		if (result < 0) {
			/* Shouldn't happen, and doesn't matter if it does. */
			(void) FUNC8(cip, cip->dataSocket, 0);
			FUNC0(cip);
			FUNC6(cip, "Invalid response to abort request.\n");
			FUNC1(cip, rp);
			return;
		}
		FUNC1(cip, rp);

		/* A response to the abort request has been received.
		 * Now the only thing left to do is close the data
		 * connection, making sure to turn off linger mode
		 * since we don't care about straggling data bits.
		 */
		(void) FUNC8(cip, cip->dataSocket, 0);
		FUNC0(cip);		/* Must close (by protocol). */
		FUNC6(cip, "End abort.\n");
	}
}