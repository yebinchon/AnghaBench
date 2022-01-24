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
struct sway_transaction {int /*<<< orphan*/  instructions; } ;

/* Variables and functions */
 struct sway_transaction* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sway_transaction*,char*) ; 

__attribute__((used)) static struct sway_transaction *FUNC3(void) {
	struct sway_transaction *transaction =
		FUNC0(1, sizeof(struct sway_transaction));
	if (!FUNC2(transaction, "Unable to allocate transaction")) {
		return NULL;
	}
	transaction->instructions = FUNC1();
	return transaction;
}