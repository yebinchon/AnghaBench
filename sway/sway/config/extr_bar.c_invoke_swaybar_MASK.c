#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wayland_socket_str ;
struct TYPE_3__ {int /*<<< orphan*/  notify; } ;
struct bar_config {char* swaybar_command; char* id; TYPE_1__ client_destroy; int /*<<< orphan*/ * client; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  scalar_t__ pid_t ;
struct TYPE_4__ {int /*<<< orphan*/  wl_display; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char* const,char* const*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  handle_swaybar_client_destroy ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC15(struct bar_config *bar) {
	int sockets[2];
	if (FUNC8(AF_UNIX, SOCK_STREAM, 0, sockets) != 0) {
		FUNC10(SWAY_ERROR, "socketpair failed");
		return;
	}
	if (!FUNC11(sockets[0], true) || !FUNC11(sockets[1], true)) {
		return;
	}

	bar->client = FUNC14(server.wl_display, sockets[0]);
	if (bar->client == NULL) {
		FUNC10(SWAY_ERROR, "wl_client_create failed");
		return;
	}

	bar->client_destroy.notify = handle_swaybar_client_destroy;
	FUNC13(bar->client, &bar->client_destroy);

	pid_t pid = FUNC3();
	if (pid < 0) {
		FUNC9(SWAY_ERROR, "Failed to create fork for swaybar");
		return;
	} else if (pid == 0) {
		// Remove the SIGUSR1 handler that wlroots adds for xwayland
		sigset_t set;
		FUNC5(&set);
		FUNC6(SIG_SETMASK, &set, NULL);

		pid = FUNC3();
		if (pid < 0) {
			FUNC10(SWAY_ERROR, "fork failed");
			FUNC0(EXIT_FAILURE);
		} else if (pid == 0) {
			if (!FUNC11(sockets[1], false)) {
				FUNC0(EXIT_FAILURE);
			}

			char wayland_socket_str[16];
			FUNC7(wayland_socket_str, sizeof(wayland_socket_str),
					"%d", sockets[1]);
			FUNC4("WAYLAND_SOCKET", wayland_socket_str, true);

			// run custom swaybar
			char *const cmd[] = {
					bar->swaybar_command ? bar->swaybar_command : "swaybar",
					"-b", bar->id, NULL};
			FUNC2(cmd[0], cmd);
			FUNC0(EXIT_FAILURE);
		}
		FUNC0(EXIT_SUCCESS);
	}

	if (FUNC1(sockets[1]) != 0) {
		FUNC10(SWAY_ERROR, "close failed");
		return;
	}

	if (FUNC12(pid, NULL, 0) < 0) {
		FUNC10(SWAY_ERROR, "waitpid failed");
		return;
	}

	FUNC9(SWAY_DEBUG, "Spawned swaybar %s", bar->id);
	return;
}