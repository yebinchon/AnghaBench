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
struct sway_transaction {scalar_t__ num_waiting; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct sway_transaction*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(void *data) {
	struct sway_transaction *transaction = data;
	FUNC0(SWAY_DEBUG, "Transaction %p timed out (%zi waiting)",
			transaction, transaction->num_waiting);
	transaction->num_waiting = 0;
	FUNC1();
	return 0;
}