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

/* Variables and functions */
 int FUNC0 (int,struct sockaddr_in*,int) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct sockaddr_in*) ; 
 int /*<<< orphan*/  WNOHANG ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,char*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  kReUseAddrYes ; 
 int kTimeoutErr ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(int port)
{
	int sockfd, newsockfd;
	struct sockaddr_in cliAddr;
	int pid;

	sockfd = FUNC1(port, 3, kReUseAddrYes, 3);
	if (sockfd < 0) {
		FUNC8("Server setup failed");
		FUNC4(1);
	}

	FUNC9("server[%d]: started.\n", (int) FUNC7());
	for(;;) {
		while (FUNC11(-1, NULL, WNOHANG) > 0) ;
		newsockfd = FUNC0(sockfd, &cliAddr, 5);
		if (newsockfd < 0) {
			if (newsockfd == kTimeoutErr)
				FUNC9("server[%d]: idle\n", (int) FUNC7());
			else
				FUNC6(stderr, "server[%d]: accept error: %s\n",
					(int) FUNC7(), FUNC10(errno));
		} else if ((pid = FUNC5()) < 0) {
			FUNC6(stderr, "server[%d]: fork error: %s\n",
				(int) FUNC7(), FUNC10(errno));
			FUNC4(1);
		} else if (pid == 0) {
			FUNC2(newsockfd, &cliAddr);
			FUNC4(0);
		} else {
			/* Parent doesn't need it now. */
			(void) FUNC3(newsockfd);
		}
	}
}