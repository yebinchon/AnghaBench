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
struct sway_transaction_instruction {struct sway_node* node; struct sway_transaction* transaction; } ;
struct sway_transaction {int /*<<< orphan*/  instructions; } ;
struct sway_node {int type; int /*<<< orphan*/  ntxnrefs; int /*<<< orphan*/  sway_container; int /*<<< orphan*/  sway_workspace; int /*<<< orphan*/  sway_output; } ;

/* Variables and functions */
#define  N_CONTAINER 131 
#define  N_OUTPUT 130 
#define  N_ROOT 129 
#define  N_WORKSPACE 128 
 struct sway_transaction_instruction* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sway_transaction_instruction*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sway_transaction_instruction*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sway_transaction_instruction*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sway_transaction_instruction*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_transaction_instruction*,char*) ; 

__attribute__((used)) static void FUNC6(struct sway_transaction *transaction,
		struct sway_node *node) {
	struct sway_transaction_instruction *instruction =
		FUNC0(1, sizeof(struct sway_transaction_instruction));
	if (!FUNC5(instruction, "Unable to allocate instruction")) {
		return;
	}
	instruction->transaction = transaction;
	instruction->node = node;

	switch (node->type) {
	case N_ROOT:
		break;
	case N_OUTPUT:
		FUNC2(node->sway_output, instruction);
		break;
	case N_WORKSPACE:
		FUNC3(node->sway_workspace, instruction);
		break;
	case N_CONTAINER:
		FUNC1(node->sway_container, instruction);
		break;
	}

	FUNC4(transaction->instructions, instruction);
	node->ntxnrefs++;
}