#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wayland_socket_str ;
typedef  scalar_t__ pid_t ;
struct TYPE_4__ {int /*<<< orphan*/  notify; } ;
struct TYPE_6__ {TYPE_1__ swaybg_client_destroy; int /*<<< orphan*/ * swaybg_client; } ;
struct TYPE_5__ {int /*<<< orphan*/  wl_display; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_3__* config ; 
 int /*<<< orphan*/  FUNC2 (char*,char**) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  handle_swaybg_client_destroy ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC13(char **command) {
	if (config->swaybg_client != NULL) {
		FUNC12(config->swaybg_client);
	}
	int sockets[2];
	if (FUNC6(AF_UNIX, SOCK_STREAM, 0, sockets) != 0) {
		FUNC7(SWAY_ERROR, "socketpair failed");
		return false;
	}
	if (!FUNC8(sockets[0], true) || !FUNC8(sockets[1], true)) {
		return false;
	}

	config->swaybg_client = FUNC11(server.wl_display, sockets[0]);
	if (config->swaybg_client == NULL) {
		FUNC7(SWAY_ERROR, "wl_client_create failed");
		return false;
	}

	config->swaybg_client_destroy.notify = handle_swaybg_client_destroy;
	FUNC10(config->swaybg_client,
		&config->swaybg_client_destroy);

	pid_t pid = FUNC3();
	if (pid < 0) {
		FUNC7(SWAY_ERROR, "fork failed");
		return false;
	} else if (pid == 0) {
		pid = FUNC3();
		if (pid < 0) {
			FUNC7(SWAY_ERROR, "fork failed");
			FUNC0(EXIT_FAILURE);
		} else if (pid == 0) {
			if (!FUNC8(sockets[1], false)) {
				FUNC0(EXIT_FAILURE);
			}

			char wayland_socket_str[16];
			FUNC5(wayland_socket_str, sizeof(wayland_socket_str),
				"%d", sockets[1]);
			FUNC4("WAYLAND_SOCKET", wayland_socket_str, true);

			FUNC2(command[0], command);
			FUNC7(SWAY_ERROR, "execvp failed");
			FUNC0(EXIT_FAILURE);
		}
		FUNC0(EXIT_SUCCESS);
	}

	if (FUNC1(sockets[1]) != 0) {
		FUNC7(SWAY_ERROR, "close failed");
		return false;
	}
	if (FUNC9(pid, NULL, 0) < 0) {
		FUNC7(SWAY_ERROR, "waitpid failed");
		return false;
	}

	return true;
}