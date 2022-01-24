#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wl_listener {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  link; } ;
struct TYPE_7__ {int /*<<< orphan*/  sun_path; } ;
struct TYPE_6__ {int length; int /*<<< orphan*/ * items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* ipc_client_list ; 
 TYPE_3__ ipc_display_destroy ; 
 scalar_t__ ipc_event_source ; 
 TYPE_2__* ipc_sockaddr ; 
 int /*<<< orphan*/  ipc_socket ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct wl_listener *listener, void *data) {
	if (ipc_event_source) {
		FUNC5(ipc_event_source);
	}
	FUNC0(ipc_socket);
	FUNC4(ipc_sockaddr->sun_path);

	while (ipc_client_list->length) {
		FUNC2(ipc_client_list->items[ipc_client_list->length-1]);
	}
	FUNC3(ipc_client_list);

	FUNC1(ipc_sockaddr);

	FUNC6(&ipc_display_destroy.link);
}