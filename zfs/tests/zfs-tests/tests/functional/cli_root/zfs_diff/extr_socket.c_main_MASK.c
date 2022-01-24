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
struct sockaddr_un {char* sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 

int
FUNC7(int argc, char *argv[])
{
	struct sockaddr_un sock;
	int fd;
	char *path;
	size_t size;
	if (argc != 2) {
		FUNC3(stderr, "usage: %s /path/to/socket\n", argv[0]);
		FUNC2(1);
	}
	path = argv[1];
	size =  sizeof (sock.sun_path);
	FUNC6(sock.sun_path, (char *)path, size - 1);
	sock.sun_path[size - 1] = '\0';

	sock.sun_family = AF_UNIX;
	if ((fd = FUNC5(AF_UNIX, SOCK_DGRAM, 0)) == -1) {
		FUNC4("socket");
		return (1);
	}
	if (FUNC0(fd, (struct sockaddr *)&sock, sizeof (struct sockaddr_un))) {
		FUNC4("bind");
		return (1);
	}
	if (FUNC1(fd)) {
		FUNC4("close");
		return (1);
	}
	return (0);
}