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
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 char* FUNC0 (char*) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 struct sockaddr_un* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,char*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

struct sockaddr_un *FUNC6(void) {
	struct sockaddr_un *ipc_sockaddr = FUNC3(sizeof(struct sockaddr_un));
	if (ipc_sockaddr == NULL) {
		FUNC5("Can't allocate ipc_sockaddr");
	}

	ipc_sockaddr->sun_family = AF_UNIX;
	int path_size = sizeof(ipc_sockaddr->sun_path);

	// Env var typically set by logind, e.g. "/run/user/<user-id>"
	const char *dir = FUNC0("XDG_RUNTIME_DIR");
	if (!dir) {
		dir = "/tmp";
	}
	if (path_size <= FUNC4(ipc_sockaddr->sun_path, path_size,
			"%s/sway-ipc.%i.%i.sock", dir, FUNC2(), FUNC1())) {
		FUNC5("Socket path won't fit into ipc_sockaddr->sun_path");
	}

	return ipc_sockaddr;
}