#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct wlr_box {int dummy; } ;
struct timespec {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  content_height; int /*<<< orphan*/  content_width; int /*<<< orphan*/  content_y; int /*<<< orphan*/  content_x; } ;
struct sway_transaction_instruction {TYPE_2__ container_state; int /*<<< orphan*/  serial; struct sway_node* node; } ;
struct sway_transaction {scalar_t__ num_waiting; scalar_t__ timer; struct timespec commit_time; scalar_t__ num_configures; TYPE_1__* instructions; } ;
struct sway_node {struct sway_transaction_instruction* instruction; TYPE_3__* sway_container; } ;
struct TYPE_13__ {scalar_t__ txn_wait; scalar_t__ noatomic; scalar_t__ txn_timings; } ;
struct TYPE_12__ {int /*<<< orphan*/  txn_timeout_ms; int /*<<< orphan*/  wl_event_loop; } ;
struct TYPE_11__ {int /*<<< orphan*/  geometry; int /*<<< orphan*/  saved_geometry; int /*<<< orphan*/  saved_buffer; int /*<<< orphan*/  surface; } ;
struct TYPE_10__ {TYPE_4__* view; } ;
struct TYPE_8__ {int length; struct sway_transaction_instruction** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 TYPE_7__ debug ; 
 int /*<<< orphan*/  handle_timeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct sway_node*) ; 
 TYPE_6__ server ; 
 scalar_t__ FUNC3 (struct sway_node*,struct sway_transaction_instruction*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct sway_transaction*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sway_transaction*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct timespec*) ; 

__attribute__((used)) static void FUNC11(struct sway_transaction *transaction) {
	FUNC4(SWAY_DEBUG, "Transaction %p committing with %i instructions",
			transaction, transaction->instructions->length);
	transaction->num_waiting = 0;
	for (int i = 0; i < transaction->instructions->length; ++i) {
		struct sway_transaction_instruction *instruction =
			transaction->instructions->items[i];
		struct sway_node *node = instruction->node;
		if (FUNC3(node, instruction)) {
			instruction->serial = FUNC6(node->sway_container->view,
					instruction->container_state.content_x,
					instruction->container_state.content_y,
					instruction->container_state.content_width,
					instruction->container_state.content_height);
			++transaction->num_waiting;

			// From here on we are rendering a saved buffer of the view, which
			// means we can send a frame done event to make the client redraw it
			// as soon as possible. Additionally, this is required if a view is
			// mapping and its default geometry doesn't intersect an output.
			struct timespec now;
			FUNC0(CLOCK_MONOTONIC, &now);
			FUNC10(
					node->sway_container->view->surface, &now);
		}
		if (FUNC2(node) && !node->sway_container->view->saved_buffer) {
			FUNC7(node->sway_container->view);
			FUNC1(&node->sway_container->view->saved_geometry,
					&node->sway_container->view->geometry,
					sizeof(struct wlr_box));
		}
		node->instruction = instruction;
	}
	transaction->num_configures = transaction->num_waiting;
	if (debug.txn_timings) {
		FUNC0(CLOCK_MONOTONIC, &transaction->commit_time);
	}
	if (debug.noatomic) {
		transaction->num_waiting = 0;
	} else if (debug.txn_wait) {
		// Force the transaction to time out even if all views are ready.
		// We do this by inflating the waiting counter.
		transaction->num_waiting += 1000000;
	}

	if (transaction->num_waiting) {
		// Set up a timer which the views must respond within
		transaction->timer = FUNC8(server.wl_event_loop,
				handle_timeout, transaction);
		if (transaction->timer) {
			FUNC9(transaction->timer,
					server.txn_timeout_ms);
		} else {
			FUNC5(SWAY_ERROR, "Unable to create transaction timer "
					"(some imperfect frames might be rendered)");
			transaction->num_waiting = 0;
		}
	}
}