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
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct TYPE_6__ {int errNo; } ;
typedef  int /*<<< orphan*/ * ResponsePtr ;
typedef  TYPE_1__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (TYPE_1__* const,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  kDontPerror ; 
 int kErrMallocFailed ; 
 int kErrPORTFailed ; 
 int kNoErr ; 

__attribute__((used)) static int
FUNC5(const FTPCIPtr cip, struct sockaddr_in *saddr)
{
	char *a, *p;
	int result;
	ResponsePtr rp;

	rp = FUNC2();
	if (rp == NULL) {
		FUNC1(cip, kDontPerror, "Malloc failed.\n");
		cip->errNo = kErrMallocFailed;
		return (cip->errNo);
	}

	/* These will point to data in network byte order. */
	a = (char *) &saddr->sin_addr;
	p = (char *) &saddr->sin_port;
#define UC(x) (int) (((int) x) & 0xff)

	/* Need to tell the other side which host (the address) and
	 * which process (port) on that host to send data to.
	 */
	result = FUNC3(cip, rp, "PORT %d,%d,%d,%d,%d,%d",
		UC(a[0]), UC(a[1]), UC(a[2]), UC(a[3]), UC(p[0]), UC(p[1]));

	if (result < 0) {
		return (result);
	} else if (result != 2) {
		/* A 500'ish response code means the PORT command failed. */
		FUNC0(cip, rp);
		cip->errNo = kErrPORTFailed;
		return (cip->errNo);
	}
	FUNC0(cip, rp);
	return (kNoErr);
}