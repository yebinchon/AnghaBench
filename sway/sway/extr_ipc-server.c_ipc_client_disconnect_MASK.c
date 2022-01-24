#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ipc_client {int /*<<< orphan*/  fd; struct ipc_client* write_buffer; scalar_t__ writable_event_source; scalar_t__ event_source; } ;
struct TYPE_3__ {int length; struct ipc_client** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  SWAY_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipc_client*) ; 
 TYPE_1__* ipc_client_list ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void FUNC7(struct ipc_client *client) {
	if (!FUNC4(client != NULL, "client != NULL")) {
		return;
	}

	FUNC3(client->fd, SHUT_RDWR);

	FUNC5(SWAY_INFO, "IPC Client %d disconnected", client->fd);
	FUNC6(client->event_source);
	if (client->writable_event_source) {
		FUNC6(client->writable_event_source);
	}
	int i = 0;
	while (i < ipc_client_list->length && ipc_client_list->items[i] != client) {
		i++;
	}
	FUNC2(ipc_client_list, i);
	FUNC1(client->write_buffer);
	FUNC0(client->fd);
	FUNC1(client);
}