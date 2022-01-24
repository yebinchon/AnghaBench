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
struct sway_server {int /*<<< orphan*/  wl_event_loop; int /*<<< orphan*/  wl_display; } ;
struct sockaddr {int dummy; } ;
struct TYPE_6__ {scalar_t__* sun_path; } ;
struct TYPE_5__ {int /*<<< orphan*/  notify; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  WL_EVENT_READABLE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  handle_display_destroy ; 
 int /*<<< orphan*/  ipc_client_list ; 
 TYPE_1__ ipc_display_destroy ; 
 int /*<<< orphan*/  ipc_event_source ; 
 int /*<<< orphan*/  ipc_handle_connection ; 
 TYPE_2__* ipc_sockaddr ; 
 int ipc_socket ; 
 TYPE_2__* FUNC5 () ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sway_server*) ; 

void FUNC14(struct sway_server *server) {
	ipc_socket = FUNC8(AF_UNIX, SOCK_STREAM, 0);
	if (ipc_socket == -1) {
		FUNC10("Unable to create IPC socket");
	}
	if (FUNC3(ipc_socket, F_SETFD, FD_CLOEXEC) == -1) {
		FUNC10("Unable to set CLOEXEC on IPC socket");
	}
	if (FUNC3(ipc_socket, F_SETFL, O_NONBLOCK) == -1) {
		FUNC10("Unable to set NONBLOCK on IPC socket");
	}

	ipc_sockaddr = FUNC5();

	// We want to use socket name set by user, not existing socket from another sway instance.
	if (FUNC4("SWAYSOCK") != NULL && FUNC0(FUNC4("SWAYSOCK"), F_OK) == -1) {
		FUNC9(ipc_sockaddr->sun_path, FUNC4("SWAYSOCK"), sizeof(ipc_sockaddr->sun_path) - 1);
		ipc_sockaddr->sun_path[sizeof(ipc_sockaddr->sun_path) - 1] = 0;
	}

	FUNC11(ipc_sockaddr->sun_path);
	if (FUNC1(ipc_socket, (struct sockaddr *)ipc_sockaddr, sizeof(*ipc_sockaddr)) == -1) {
		FUNC10("Unable to bind IPC socket");
	}

	if (FUNC6(ipc_socket, 3) == -1) {
		FUNC10("Unable to listen on IPC socket");
	}

	// Set i3 IPC socket path so that i3-msg works out of the box
	FUNC7("I3SOCK", ipc_sockaddr->sun_path, 1);
	FUNC7("SWAYSOCK", ipc_sockaddr->sun_path, 1);

	ipc_client_list = FUNC2();

	ipc_display_destroy.notify = handle_display_destroy;
	FUNC12(server->wl_display, &ipc_display_destroy);

	ipc_event_source = FUNC13(server->wl_event_loop, ipc_socket,
			WL_EVENT_READABLE, ipc_handle_connection, server);
}