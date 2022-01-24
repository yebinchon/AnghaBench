#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secondaryBuf ;
typedef  scalar_t__ longest_int ;
typedef  int /*<<< orphan*/  line ;
struct TYPE_6__ {scalar_t__ xferTimeout; int errNo; int /*<<< orphan*/  numListings; int /*<<< orphan*/  bytesTransferred; int /*<<< orphan*/  dataSocket; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  SReadlineInfo ;
typedef  TYPE_1__* FTPCIPtr ;

/* Variables and functions */
 int FUNC0 (char*,int,int /*<<< orphan*/ ,char*,char**,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_1__* const,int) ; 
 int FUNC4 (TYPE_1__* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*,char const*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  kDoPerror ; 
 int /*<<< orphan*/  kDontPerror ; 
 int kErrBadMagic ; 
 int kErrBadParameter ; 
 int kErrDataTimedOut ; 
 void* kErrFdopenR ; 
 int kErrGeneric ; 
 void* kErrLISTFailed ; 
 int /*<<< orphan*/  kLibraryMagic ; 
 int /*<<< orphan*/  kNetReading ; 
 int kNoErr ; 
 int kTimeoutErr ; 
 int /*<<< orphan*/  kTypeAscii ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int const,char*,int /*<<< orphan*/ ) ; 

int
FUNC12(const FTPCIPtr cip, const int outfd, const int longMode, const char *const lsflag)
{
	const char *cmd;
	char line[512];
	char secondaryBuf[768];
#ifndef NO_SIGNALS
	char *secBufPtr, *secBufLimit;
	int nread;
	volatile int result;
#else	/* NO_SIGNALS */
	SReadlineInfo lsSrl;
	int result;
#endif	/* NO_SIGNALS */

	if (cip == NULL)
		return (kErrBadParameter);
	if (FUNC9(cip->magic, kLibraryMagic))
		return (kErrBadMagic);

	cmd = (longMode != 0) ? "LIST" : "NLST";
	if ((lsflag == NULL) || (lsflag[0] == '\0')) {
		result = FUNC4(cip, kNetReading, kTypeAscii, (longest_int) 0, "%s", cmd);
	} else {
		result = FUNC4(cip, kNetReading, kTypeAscii, (longest_int) 0, "%s %s", cmd, lsflag);
	}


#ifdef NO_SIGNALS

	if (result == 0) {
		if (InitSReadlineInfo(&lsSrl, cip->dataSocket, secondaryBuf, sizeof(secondaryBuf), (int) cip->xferTimeout, 1) < 0) {
			/* Not really fdopen, but close in what we're trying to do. */
			result = kErrFdopenR;
			cip->errNo = kErrFdopenR;
			Error(cip, kDoPerror, "Could not fdopen.\n");
			return (result);
		}

		for (;;) {
			result = SReadline(&lsSrl, line, sizeof(line) - 2);
			if (result == kTimeoutErr) {
				/* timeout */
				Error(cip, kDontPerror, "Could not directory listing data -- timed out.\n");
				cip->errNo = kErrDataTimedOut;
				return (cip->errNo);
			} else if (result == 0) {
				/* end of listing -- done */
				cip->numListings++;
				break;
			} else if (result < 0) {
				/* error */
				Error(cip, kDoPerror, "Could not read directory listing data");
				result = kErrLISTFailed;
				cip->errNo = kErrLISTFailed;
				break;
			}

			(void) write(outfd, line, strlen(line));
		}

		DisposeSReadlineInfo(&lsSrl);
		if (FTPEndDataCmd(cip, 1) < 0) {
			result = kErrLISTFailed;
			cip->errNo = kErrLISTFailed;
		}
	} else if (result == kErrGeneric) {
		result = kErrLISTFailed;
		cip->errNo = kErrLISTFailed;
	}


#else	/* NO_SIGNALS */

	if (result == 0) {
		/* This line sets the buffer pointer so that the first thing
		 * BufferGets will do is reset and fill the buffer using
		 * real I/O.
		 */
		secBufPtr = secondaryBuf + sizeof(secondaryBuf);
		secBufLimit = (char *) 0;

		for (;;) {
			if (cip->xferTimeout > 0)
				(void) FUNC8(cip->xferTimeout);
			nread = FUNC0(line, sizeof(line), cip->dataSocket, secondaryBuf, &secBufPtr, &secBufLimit, sizeof(secondaryBuf));
			if (nread <= 0) {
				if (nread < 0)
					break;
			} else {
				cip->bytesTransferred += (longest_int) nread;
				(void) FUNC7(line, "\n");
				(void) FUNC11(outfd, line, FUNC10(line));
			}
		}
		if (cip->xferTimeout > 0)
			(void) FUNC8(0);
		result = FUNC3(cip, 1);
		if (result < 0) {
			result = kErrLISTFailed;
			cip->errNo = kErrLISTFailed;
		}
		result = kNoErr;
		cip->numListings++;
	} else if (result == kErrGeneric) {
		result = kErrLISTFailed;
		cip->errNo = kErrLISTFailed;
	}
#endif	/* NO_SIGNALS */
	return (result);
}