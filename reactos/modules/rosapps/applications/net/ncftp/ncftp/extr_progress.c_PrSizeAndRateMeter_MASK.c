#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  url ;
typedef  long longest_int ;
typedef  int /*<<< orphan*/  localName ;
struct TYPE_4__ {double kBytesPerSec; int /*<<< orphan*/  netMode; int /*<<< orphan*/  port; int /*<<< orphan*/  host; int /*<<< orphan*/  pass; int /*<<< orphan*/  user; int /*<<< orphan*/  startingWorkingDirectory; int /*<<< orphan*/ * rname; scalar_t__ startPoint; scalar_t__ bytesTransferred; int /*<<< orphan*/ * lname; int /*<<< orphan*/  usingTAR; int /*<<< orphan*/  useProgressMeter; scalar_t__ expectedSize; int /*<<< orphan*/  (* progress ) (TYPE_1__* const,int) ;} ;
typedef  TYPE_1__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 double FUNC1 (double,char const**,double*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__* const,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  gRemoteCWD ; 
 int /*<<< orphan*/  kNetReading ; 
#define  kPrEndMsg 130 
#define  kPrInitMsg 129 
#define  kPrUpdateMsg 128 
 scalar_t__ kSizeUnknown ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,long,double,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC10 (char*) ; 

void
FUNC11(const FTPCIPtr cip, int mode)
{
	double rate = 0.0;
	const char *rStr;
	static const char *uStr;
	static double uMult;
	char localName[32];
	char line[128];
	int i;

	switch (mode) {
		case kPrInitMsg:
			if (cip->expectedSize != kSizeUnknown) {
				cip->progress = PrStatBar;
				FUNC5(cip, mode);
				return;
			}
			(void) FUNC1((double) cip->expectedSize, &uStr, &uMult);

			if (cip->lname == NULL) {
				localName[0] = '\0';
			} else {
				FUNC0(localName, cip->lname, sizeof(localName) - 2, 0);
				if ((cip->usingTAR) && (FUNC10(localName) < (sizeof(localName) - 6))) {
					FUNC6(localName, " (TAR)");
				}
				(void) FUNC6(localName, ":");
			}
			if (cip->useProgressMeter) {
#ifdef ncftp
				if (cip->usingTAR) {
					if (OneTimeMessage("tar") != 0) {
						(void) fprintf(stderr, "\n\
Note: NcFTP is using on-the-fly TAR on the remote server, which retrieves the\n\
entire directory as one operation.  This allows you to preserve exact file\n\
timestamps, ownerships, and permissions, as well as a slight performance\n\
boost.\n\
\n\
If you would rather retrieve each file individually, use the \"-T\" flag with\n\
\"get\".  TAR mode cannot be resumed if the transfer fails, so if that happens\n\
try \"get -T\" to resume the directory transfer.\n\n");
					}
				}
#endif	/* ncftp */
				(void) FUNC8(stderr, "%-32s", localName);
			}
			break;

		case kPrUpdateMsg:
			rate = FUNC1(cip->kBytesPerSec * 1024.0, &rStr, NULL);

			if (cip->lname == NULL) {
				localName[0] = '\0';
			} else {
				FUNC0(localName, cip->lname, sizeof(localName) - 2, 0);
				if ((cip->usingTAR) && (FUNC10(localName) < (sizeof(localName) - 6))) {
					FUNC6(localName, " (TAR)");
				}
				(void) FUNC6(localName, ":");
			}

#if defined(HAVE_LONG_LONG) && defined(PRINTF_LONG_LONG_LLD)
			(void) sprintf(line, "%-32s  %10lld bytes  %6.2f %s/s",
				localName,
				(longest_int) (cip->bytesTransferred + cip->startPoint),
				rate,
				rStr
			);
#elif defined(HAVE_LONG_LONG) && defined(PRINTF_LONG_LONG_QD)
			(void) sprintf(line, "%-32s  %10qd bytes  %6.2f %s/s",
				localName,
				(longest_int) (cip->bytesTransferred + cip->startPoint),
				rate,
				rStr
			);
#elif defined(HAVE_LONG_LONG) && defined(PRINTF_LONG_LONG_I64D)
			(void) sprintf(line, "%-32s  %10I64d bytes  %6.2f %s/s",
				localName,
				(longest_int) (cip->bytesTransferred + cip->startPoint),
				rate,
				rStr
			);
#else
			(void) FUNC9(line, "%-32s  %10ld bytes  %6.2f %s/s",
				localName,
				(long) (cip->bytesTransferred + cip->startPoint),
				rate,
				rStr
			);
#endif

			/* Pad the rest of the line with spaces, to erase any
			 * stuff that might have been left over from the last
			 * update.
			 */
			for (i = (int) FUNC10(line); i < 80 - 2; i++)
				line[i] = ' ';
			line[i] = '\0';

			/* Print the updated information. */
			(void) FUNC8(stderr, "\r%s", line);

#if defined(HAVE_LONG_LONG) && defined(PRINTF_LONG_LONG_LLD)
			SetXtermTitle("%s - [%lld bytes]", cip->lname, (longest_int) (cip->bytesTransferred + cip->startPoint));
#elif defined(HAVE_LONG_LONG) && defined(PRINTF_LONG_LONG_QD)
			SetXtermTitle("%s - [%qd bytes]", cip->lname, (longest_int) (cip->bytesTransferred + cip->startPoint));
#elif defined(HAVE_LONG_LONG) && defined(PRINTF_LONG_LONG_I64D)
			SetXtermTitle("%s - [%I64d bytes]", cip->lname, (longest_int) (cip->bytesTransferred + cip->startPoint));
#else
			FUNC7("%s - [%ld bytes]", cip->lname, (long) (cip->bytesTransferred + cip->startPoint));
#endif
			break;

		case kPrEndMsg:
			(void) FUNC8(stderr, "\n\r");
#ifdef ncftp
			if (cip->rname != NULL) {
				char url[256];

				FileToURL(url, sizeof(url), cip->rname, gRemoteCWD, cip->startingWorkingDirectory, cip->user, cip->pass, cip->host, cip->port);
				LogXfer((cip->netMode == kNetReading) ? "get" : "put", url);
			}
#endif
			break;
	}
}