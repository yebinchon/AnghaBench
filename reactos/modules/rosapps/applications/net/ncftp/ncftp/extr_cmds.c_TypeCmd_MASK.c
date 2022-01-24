#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int xferType; } ;
struct TYPE_5__ {int curTransferType; } ;
typedef  int /*<<< orphan*/  CommandPtr ;
typedef  int /*<<< orphan*/  ArgvInfoPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,char const*) ; 
 TYPE_2__ gBm ; 
 TYPE_1__ gConn ; 
 int /*<<< orphan*/  gUnusedArg ; 
 int /*<<< orphan*/  kErrTYPEFailed ; 
 int kTypeAscii ; 
 int kTypeBinary ; 
 int kTypeEbcdic ; 

void
FUNC4(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
	int c;
	int result;
	const char *cs;

	FUNC0(gUnusedArg);
	if (argc < 2) {
		c = argv[0][0];
		if (c == 't') {
			if (gBm.xferType == kTypeAscii) {
				c = kTypeAscii;
				cs = "ASCII";
			} else if (gBm.xferType == kTypeEbcdic) {
				c = kTypeEbcdic;
				cs = "EBCDIC";
			} else {
				c = kTypeBinary;
				cs = "binary/image";
			}
			FUNC3(-1, "Type is %c (%s).\n", c, cs);
		} else {
			result = FUNC2(&gConn, c);
			if (result < 0) {
				FUNC1(&gConn, result, kErrTYPEFailed, "Type", argv[1]);
			} else {
				gBm.xferType = gConn.curTransferType;
			}
		}
	} else {
		c = argv[1][0];
		result = FUNC2(&gConn, c);
		if (result < 0) {
			FUNC1(&gConn, result, kErrTYPEFailed, "Type", argv[1]);
		} else {
			gBm.xferType = gConn.curTransferType;
		}
	}
}