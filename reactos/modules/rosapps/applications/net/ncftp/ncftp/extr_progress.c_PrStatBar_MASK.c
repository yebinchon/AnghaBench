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
typedef  int /*<<< orphan*/  localName ;
struct TYPE_4__ {double kBytesPerSec; int stalled; int /*<<< orphan*/  netMode; int /*<<< orphan*/  port; int /*<<< orphan*/  host; int /*<<< orphan*/  pass; int /*<<< orphan*/  user; int /*<<< orphan*/  startingWorkingDirectory; int /*<<< orphan*/ * rname; int /*<<< orphan*/ * lname; scalar_t__ startPoint; scalar_t__ bytesTransferred; scalar_t__ expectedSize; int /*<<< orphan*/  percentCompleted; int /*<<< orphan*/  secLeft; int /*<<< orphan*/  useProgressMeter; int /*<<< orphan*/  (* progress ) (TYPE_1__* const,int) ;} ;
typedef  TYPE_1__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 double FUNC1 (double,char const**,double*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__* const,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  gRemoteCWD ; 
 int /*<<< orphan*/  kNetReading ; 
#define  kPrEndMsg 130 
#define  kPrInitMsg 129 
#define  kPrUpdateMsg 128 
 scalar_t__ kSizeUnknown ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,double,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC10 (char*) ; 

void
FUNC11(const FTPCIPtr cip, int mode)
{
	double rate, done;
	int secLeft, minLeft;
	const char *rStr;
	static const char *uStr;
	static double uTotal, uMult;
	const char *stall;
	char localName[80];
	char line[134];
	int i;

	switch (mode) {
		case kPrInitMsg:
			FUNC7(stdout);
			if (cip->expectedSize == kSizeUnknown) {
				cip->progress = PrSizeAndRateMeter;
				FUNC4(cip, mode);
				return;
			}
			uTotal = FUNC1((double) cip->expectedSize, &uStr, &uMult);

			if (cip->lname == NULL) {
				localName[0] = '\0';
			} else {
				/* Leave room for a ':' and '\0'. */
				FUNC0(localName, cip->lname, sizeof(localName) - 2, 0);
				(void) FUNC5(localName, ":");
			}

			if (cip->useProgressMeter)
				(void) FUNC8(stderr, "%-32s", localName);
			break;

		case kPrUpdateMsg:
			secLeft = (int) (cip->secLeft + 0.5);
			minLeft = secLeft / 60;
			secLeft = secLeft - (minLeft * 60);
			if (minLeft > 999) {
				minLeft = 999;
				secLeft = 59;
			}

			rate = FUNC1(cip->kBytesPerSec * 1024.0, &rStr, NULL);
			done = (double) (cip->bytesTransferred + cip->startPoint) / uMult;

			if (cip->lname == NULL) {
				localName[0] = '\0';
			} else {
				FUNC0(localName, cip->lname, 31, 0);
				(void) FUNC5(localName, ":");
			}

			if (cip->stalled < 2)
				stall = " ";
			else if (cip->stalled < 15)
				stall = "-";
			else
				stall = "=";

			(void) FUNC9(line, "%-32s   ETA: %3d:%02d  %6.2f/%6.2f %.2s  %6.2f %.2s/s %.1s",
				localName,
				minLeft,
				secLeft,
				done,
				uTotal,
				uStr,
				rate,
				rStr,
				stall
			);

			/* Print the updated information. */
			(void) FUNC8(stderr, "\r%s", line);

			FUNC6("%s - [%.1f%%]", cip->lname, cip->percentCompleted);
			break;

		case kPrEndMsg:

			rate = FUNC1(cip->kBytesPerSec * 1024.0, &rStr, NULL);
			done = (double) (cip->bytesTransferred + cip->startPoint) / uMult;

			if (cip->expectedSize == (cip->bytesTransferred + cip->startPoint)) {
				if (cip->lname == NULL) {
					localName[0] = '\0';
				} else {
					FUNC0(localName, cip->lname, 52, 0);
					(void) FUNC5(localName, ":");
				}

				(void) FUNC9(line, "%-53s  %6.2f %.2s  %6.2f %.2s/s  ",
					localName,
					uTotal,
					uStr,
					rate,
					rStr
				);
			} else {
				if (cip->lname == NULL) {
					localName[0] = '\0';
				} else {
					FUNC0(localName, cip->lname, 45, 0);
					(void) FUNC5(localName, ":");
				}

				(void) FUNC9(line, "%-46s  %6.2f/%6.2f %.2s  %6.2f %.2s/s  ",
					localName,
					done,
					uTotal,
					uStr,
					rate,
					rStr
				);
			}

			/* Pad the rest of the line with spaces, to erase any
			 * stuff that might have been left over from the last
			 * update.
			 */
			for (i = (int) FUNC10(line); i < 80 - 2; i++)
				line[i] = ' ';
			line[i] = '\0';

			/* Print the updated information. */
			(void) FUNC8(stderr, "\r%s\n\r", line);
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