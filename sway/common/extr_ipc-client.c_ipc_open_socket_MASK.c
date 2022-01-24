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
struct sockaddr_un {scalar_t__* sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int,struct sockaddr*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

int FUNC4(const char *socket_path) {
	struct sockaddr_un addr;
	int socketfd;
	if ((socketfd = FUNC1(AF_UNIX, SOCK_STREAM, 0)) == -1) {
		FUNC3("Unable to open Unix socket");
	}
	addr.sun_family = AF_UNIX;
	FUNC2(addr.sun_path, socket_path, sizeof(addr.sun_path) - 1);
	addr.sun_path[sizeof(addr.sun_path) - 1] = 0;
	int l = sizeof(struct sockaddr_un);
	if (FUNC0(socketfd, (struct sockaddr *)&addr, l) == -1) {
		FUNC3("Unable to connect to %s", socket_path);
	}
	return socketfd;
}