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
typedef  scalar_t__ uint32_t ;
struct sway_server {int /*<<< orphan*/  wl_event_loop; } ;
struct ipc_client {int fd; int write_buffer_size; void* write_buffer; scalar_t__ write_buffer_len; int /*<<< orphan*/ * writable_event_source; int /*<<< orphan*/  event_source; scalar_t__ subscribed_events; scalar_t__ pending_length; struct sway_server* server; } ;

/* Variables and functions */
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 scalar_t__ WL_EVENT_READABLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  ipc_client_handle_readable ; 
 int /*<<< orphan*/  ipc_client_list ; 
 int /*<<< orphan*/  ipc_socket ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ipc_client*) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,struct ipc_client*) ; 

int FUNC9(int fd, uint32_t mask, void *data) {
	(void) fd;
	struct sway_server *server = data;
	FUNC6(SWAY_DEBUG, "Event on IPC listening socket");
	FUNC1(mask == WL_EVENT_READABLE);

	int client_fd = FUNC0(ipc_socket, NULL, NULL);
	if (client_fd == -1) {
		FUNC7(SWAY_ERROR, "Unable to accept IPC client connection");
		return 0;
	}

	int flags;
	if ((flags = FUNC3(client_fd, F_GETFD)) == -1
			|| FUNC3(client_fd, F_SETFD, flags|FD_CLOEXEC) == -1) {
		FUNC7(SWAY_ERROR, "Unable to set CLOEXEC on IPC client socket");
		FUNC2(client_fd);
		return 0;
	}
	if ((flags = FUNC3(client_fd, F_GETFL)) == -1
			|| FUNC3(client_fd, F_SETFL, flags|O_NONBLOCK) == -1) {
		FUNC7(SWAY_ERROR, "Unable to set NONBLOCK on IPC client socket");
		FUNC2(client_fd);
		return 0;
	}

	struct ipc_client *client = FUNC5(sizeof(struct ipc_client));
	if (!client) {
		FUNC6(SWAY_ERROR, "Unable to allocate ipc client");
		FUNC2(client_fd);
		return 0;
	}
	client->server = server;
	client->pending_length = 0;
	client->fd = client_fd;
	client->subscribed_events = 0;
	client->event_source = FUNC8(server->wl_event_loop,
			client_fd, WL_EVENT_READABLE, ipc_client_handle_readable, client);
	client->writable_event_source = NULL;

	client->write_buffer_size = 128;
	client->write_buffer_len = 0;
	client->write_buffer = FUNC5(client->write_buffer_size);
	if (!client->write_buffer) {
		FUNC6(SWAY_ERROR, "Unable to allocate ipc client write buffer");
		FUNC2(client_fd);
		return 0;
	}

	FUNC6(SWAY_DEBUG, "New client: fd %d", client_fd);
	FUNC4(ipc_client_list, client);
	return 0;
}