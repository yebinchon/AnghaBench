
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_transaction_instruction {scalar_t__ timer; TYPE_1__* instructions; struct sway_node* node; } ;
struct sway_transaction {scalar_t__ timer; TYPE_1__* instructions; struct sway_node* node; } ;
struct sway_node {scalar_t__ ntxnrefs; int type; int sway_container; int sway_workspace; int sway_output; scalar_t__ destroying; struct sway_transaction_instruction* instruction; } ;
struct TYPE_2__ {int length; struct sway_transaction_instruction** items; } ;






 int container_destroy (int ) ;
 int free (struct sway_transaction_instruction*) ;
 int list_free (TYPE_1__*) ;
 int output_destroy (int ) ;
 int sway_assert (int,char*) ;
 int wl_event_source_remove (scalar_t__) ;
 int workspace_destroy (int ) ;

__attribute__((used)) static void transaction_destroy(struct sway_transaction *transaction) {

 for (int i = 0; i < transaction->instructions->length; ++i) {
  struct sway_transaction_instruction *instruction =
   transaction->instructions->items[i];
  struct sway_node *node = instruction->node;
  node->ntxnrefs--;
  if (node->instruction == instruction) {
   node->instruction = ((void*)0);
  }
  if (node->destroying && node->ntxnrefs == 0) {
   switch (node->type) {
   case 129:
    sway_assert(0, "Never reached");
    break;
   case 130:
    output_destroy(node->sway_output);
    break;
   case 128:
    workspace_destroy(node->sway_workspace);
    break;
   case 131:
    container_destroy(node->sway_container);
    break;
   }
  }
  free(instruction);
 }
 list_free(transaction->instructions);

 if (transaction->timer) {
  wl_event_source_remove(transaction->timer);
 }
 free(transaction);
}
