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
struct sway_transaction {int dummy; } ;
struct sway_node {int dirty; } ;
struct TYPE_6__ {int length; } ;
struct TYPE_5__ {TYPE_3__* transactions; TYPE_1__* dirty_nodes; } ;
struct TYPE_4__ {int length; struct sway_node** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,struct sway_transaction*) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC1 (struct sway_transaction*,struct sway_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_transaction*) ; 
 struct sway_transaction* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void) {
	if (!server.dirty_nodes->length) {
		return;
	}
	struct sway_transaction *transaction = FUNC3();
	if (!transaction) {
		return;
	}
	for (int i = 0; i < server.dirty_nodes->length; ++i) {
		struct sway_node *node = server.dirty_nodes->items[i];
		FUNC1(transaction, node);
		node->dirty = false;
	}
	server.dirty_nodes->length = 0;

	FUNC0(server.transactions, transaction);

	// There's only ever one committed transaction,
	// and it's the first one in the queue.
	if (server.transactions->length == 1) {
		FUNC2(transaction);
		// Attempting to progress the queue here is useful
		// if the transaction has nothing to wait for.
		FUNC4();
	}
}