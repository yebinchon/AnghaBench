
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sway_view {TYPE_2__* container; } ;
struct TYPE_6__ {int content_width; int content_height; } ;
struct sway_transaction_instruction {TYPE_3__ container_state; } ;
struct TYPE_4__ {struct sway_transaction_instruction* instruction; } ;
struct TYPE_5__ {TYPE_1__ node; } ;


 int set_instruction_ready (struct sway_transaction_instruction*) ;

void transaction_notify_view_ready_by_size(struct sway_view *view,
  int width, int height) {
 struct sway_transaction_instruction *instruction =
  view->container->node.instruction;
 if (instruction->container_state.content_width == width &&
   instruction->container_state.content_height == height) {
  set_instruction_ready(instruction);
 }
}
