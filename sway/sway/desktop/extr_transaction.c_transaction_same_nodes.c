
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_transaction_instruction {scalar_t__ node; } ;
struct sway_transaction {TYPE_1__* instructions; } ;
struct TYPE_2__ {scalar_t__ length; struct sway_transaction_instruction** items; } ;



__attribute__((used)) static bool transaction_same_nodes(struct sway_transaction *a,
  struct sway_transaction *b) {
 if (a->instructions->length != b->instructions->length) {
  return 0;
 }
 for (int i = 0; i < a->instructions->length; ++i) {
  struct sway_transaction_instruction *a_inst = a->instructions->items[i];
  struct sway_transaction_instruction *b_inst = b->instructions->items[i];
  if (a_inst->node != b_inst->node) {
   return 0;
  }
 }
 return 1;
}
