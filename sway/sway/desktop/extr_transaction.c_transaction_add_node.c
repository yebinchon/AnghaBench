
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_transaction_instruction {struct sway_node* node; struct sway_transaction* transaction; } ;
struct sway_transaction {int instructions; } ;
struct sway_node {int type; int ntxnrefs; int sway_container; int sway_workspace; int sway_output; } ;






 struct sway_transaction_instruction* calloc (int,int) ;
 int copy_container_state (int ,struct sway_transaction_instruction*) ;
 int copy_output_state (int ,struct sway_transaction_instruction*) ;
 int copy_workspace_state (int ,struct sway_transaction_instruction*) ;
 int list_add (int ,struct sway_transaction_instruction*) ;
 int sway_assert (struct sway_transaction_instruction*,char*) ;

__attribute__((used)) static void transaction_add_node(struct sway_transaction *transaction,
  struct sway_node *node) {
 struct sway_transaction_instruction *instruction =
  calloc(1, sizeof(struct sway_transaction_instruction));
 if (!sway_assert(instruction, "Unable to allocate instruction")) {
  return;
 }
 instruction->transaction = transaction;
 instruction->node = node;

 switch (node->type) {
 case 129:
  break;
 case 130:
  copy_output_state(node->sway_output, instruction);
  break;
 case 128:
  copy_workspace_state(node->sway_workspace, instruction);
  break;
 case 131:
  copy_container_state(node->sway_container, instruction);
  break;
 }

 list_add(transaction->instructions, instruction);
 node->ntxnrefs++;
}
