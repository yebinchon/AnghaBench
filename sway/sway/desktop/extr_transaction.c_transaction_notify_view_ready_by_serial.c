
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct sway_view {TYPE_2__* container; } ;
struct sway_transaction_instruction {scalar_t__ serial; } ;
struct TYPE_3__ {struct sway_transaction_instruction* instruction; } ;
struct TYPE_4__ {TYPE_1__ node; } ;


 int set_instruction_ready (struct sway_transaction_instruction*) ;

void transaction_notify_view_ready_by_serial(struct sway_view *view,
  uint32_t serial) {
 struct sway_transaction_instruction *instruction =
  view->container->node.instruction;
 if (instruction->serial == serial) {
  set_instruction_ready(instruction);
 }
}
