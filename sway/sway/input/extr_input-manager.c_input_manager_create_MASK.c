#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sway_server {int /*<<< orphan*/  wl_display; TYPE_2__* backend; } ;
struct TYPE_14__ {int /*<<< orphan*/  notify; } ;
struct sway_input_manager {TYPE_7__ inhibit_deactivate; TYPE_6__* inhibit; TYPE_7__ inhibit_activate; TYPE_7__ virtual_keyboard_new; TYPE_5__* virtual_keyboard; TYPE_7__ new_input; int /*<<< orphan*/  seats; int /*<<< orphan*/  devices; } ;
struct TYPE_11__ {int /*<<< orphan*/  deactivate; int /*<<< orphan*/  activate; } ;
struct TYPE_13__ {TYPE_4__ events; } ;
struct TYPE_10__ {int /*<<< orphan*/  new_virtual_keyboard; } ;
struct TYPE_12__ {TYPE_3__ events; } ;
struct TYPE_8__ {int /*<<< orphan*/  new_input; } ;
struct TYPE_9__ {TYPE_1__ events; } ;

/* Variables and functions */
 struct sway_input_manager* FUNC0 (int,int) ; 
 int /*<<< orphan*/  handle_inhibit_activate ; 
 int /*<<< orphan*/  handle_inhibit_deactivate ; 
 int /*<<< orphan*/  handle_new_input ; 
 int /*<<< orphan*/  handle_virtual_keyboard ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ) ; 

struct sway_input_manager *FUNC5(struct sway_server *server) {
	struct sway_input_manager *input =
		FUNC0(1, sizeof(struct sway_input_manager));
	if (!input) {
		return NULL;
	}

	FUNC1(&input->devices);
	FUNC1(&input->seats);

	input->new_input.notify = handle_new_input;
	FUNC2(&server->backend->events.new_input, &input->new_input);

	input->virtual_keyboard = FUNC4(
		server->wl_display);
	FUNC2(&input->virtual_keyboard->events.new_virtual_keyboard,
		&input->virtual_keyboard_new);
	input->virtual_keyboard_new.notify = handle_virtual_keyboard;

	input->inhibit = FUNC3(server->wl_display);
	input->inhibit_activate.notify = handle_inhibit_activate;
	FUNC2(&input->inhibit->events.activate,
			&input->inhibit_activate);
	input->inhibit_deactivate.notify = handle_inhibit_deactivate;
	FUNC2(&input->inhibit->events.deactivate,
			&input->inhibit_deactivate);

	return input;
}