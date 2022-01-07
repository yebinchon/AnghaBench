
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int tv_sec; double tv_nsec; } ;
struct sway_transaction_instruction {int container_state; int workspace_state; int output_state; struct sway_node* node; } ;
struct sway_transaction {TYPE_1__* instructions; struct timespec commit_time; } ;
struct sway_node {int type; int * instruction; int sway_container; int sway_workspace; int sway_output; } ;
struct TYPE_4__ {scalar_t__ txn_timings; } ;
struct TYPE_3__ {int length; struct sway_transaction_instruction** items; } ;


 int CLOCK_MONOTONIC ;




 int SWAY_DEBUG ;
 int apply_container_state (int ,int *) ;
 int apply_output_state (int ,int *) ;
 int apply_workspace_state (int ,int *) ;
 int clock_gettime (int ,struct timespec*) ;
 int cursor_rebase_all () ;
 TYPE_2__ debug ;
 int sway_log (int ,char*,struct sway_transaction*,...) ;

__attribute__((used)) static void transaction_apply(struct sway_transaction *transaction) {
 sway_log(SWAY_DEBUG, "Applying transaction %p", transaction);
 if (debug.txn_timings) {
  struct timespec now;
  clock_gettime(CLOCK_MONOTONIC, &now);
  struct timespec *commit = &transaction->commit_time;
  float ms = (now.tv_sec - commit->tv_sec) * 1000 +
   (now.tv_nsec - commit->tv_nsec) / 1000000.0;
  sway_log(SWAY_DEBUG, "Transaction %p: %.1fms waiting "
    "(%.1f frames if 60Hz)", transaction, ms, ms / (1000.0f / 60));
 }


 for (int i = 0; i < transaction->instructions->length; ++i) {
  struct sway_transaction_instruction *instruction =
   transaction->instructions->items[i];
  struct sway_node *node = instruction->node;

  switch (node->type) {
  case 129:
   break;
  case 130:
   apply_output_state(node->sway_output, &instruction->output_state);
   break;
  case 128:
   apply_workspace_state(node->sway_workspace,
     &instruction->workspace_state);
   break;
  case 131:
   apply_container_state(node->sway_container,
     &instruction->container_state);
   break;
  }

  node->instruction = ((void*)0);
 }

 cursor_rebase_all();
}
