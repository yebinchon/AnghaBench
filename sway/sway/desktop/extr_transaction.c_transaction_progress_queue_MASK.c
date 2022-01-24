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
struct sway_transaction {scalar_t__ num_waiting; } ;
struct TYPE_4__ {int length; struct sway_transaction** items; } ;
struct TYPE_3__ {TYPE_2__* transactions; int /*<<< orphan*/  idle_inhibit_manager_v1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_transaction*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_transaction*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_transaction*) ; 
 scalar_t__ FUNC5 (struct sway_transaction*,struct sway_transaction*) ; 

__attribute__((used)) static void FUNC6(void) {
	if (!server.transactions->length) {
		return;
	}
	// There's only ever one committed transaction,
	// and it's the first one in the queue.
	struct sway_transaction *transaction = server.transactions->items[0];
	if (transaction->num_waiting) {
		return;
	}
	FUNC2(transaction);
	FUNC4(transaction);
	FUNC0(server.transactions, 0);

	if (!server.transactions->length) {
		FUNC1(server.idle_inhibit_manager_v1);
		return;
	}

	// If there's a bunch of consecutive transactions which all apply to the
	// same views, skip all except the last one.
	while (server.transactions->length >= 2) {
		struct sway_transaction *a = server.transactions->items[0];
		struct sway_transaction *b = server.transactions->items[1];
		if (FUNC5(a, b)) {
			FUNC0(server.transactions, 0);
			FUNC4(a);
		} else {
			break;
		}
	}

	transaction = server.transactions->items[0];
	FUNC3(transaction);
	FUNC6();
}