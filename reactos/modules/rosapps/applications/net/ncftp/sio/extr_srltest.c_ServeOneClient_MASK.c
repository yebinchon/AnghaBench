#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sockaddr_in {int dummy; } ;
typedef  int /*<<< orphan*/  cliAddrStr ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  bbuf ;
typedef  int /*<<< orphan*/  SReadlineInfo ;

/* Variables and functions */
 char* FUNC0 (char*,int,struct sockaddr_in*,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int,char*,int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,char*) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (char) ; 
 int kTimeoutErr ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 char FUNC11 (char) ; 

__attribute__((used)) static void
FUNC12(int sockfd, struct sockaddr_in *cliAddr)
{
	char buf[80], cliAddrStr[64];
	char bbuf[320];
	int nread, nwrote, i;
	SReadlineInfo srl;

	FUNC9("subserver[%d]: started, connected to %s.\n", (int) FUNC7(),
		FUNC0(cliAddrStr, sizeof(cliAddrStr), cliAddr, 1, "<%h:%p>")
	);

	if (FUNC1(&srl, sockfd, bbuf, sizeof(bbuf), 5) < 0) {
		FUNC6(stderr, "subserver[%d]: InitSReadlineInfo error: %s\n",
			(int) FUNC7(), FUNC10(errno));
		FUNC5(1);
	}
	for (;;) {
		nread = FUNC3(&srl, buf, sizeof(buf));
		if (nread == 0) {
			break;
		} else if (nread == kTimeoutErr) {
			FUNC9("subserver[%d]: idle\n", (int) FUNC7());
			continue;
		} else if (nread < 0) {
			FUNC6(stderr, "subserver[%d]: read error: %s\n",
				(int) FUNC7(), FUNC10(errno));
			break;
		}
		for (i=0; i<nread; i++)
			if (FUNC8(buf[i]))
				buf[i] = FUNC11(buf[i]);
		nwrote = FUNC4(sockfd, buf, nread, 15);
		if (nwrote < 0) {
			FUNC6(stderr, "subserver[%d]: write error: %s\n",
				(int) FUNC7(), FUNC10(errno));
			break;
		}
	}
	(void) FUNC2(sockfd, 10);
	FUNC9("subserver[%d]: done.\n", (int) FUNC7());
	FUNC5(0);
}