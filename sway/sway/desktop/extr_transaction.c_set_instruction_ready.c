
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timespec {int tv_sec; double tv_nsec; } ;
struct sway_transaction_instruction {TYPE_2__* node; struct sway_transaction* transaction; } ;
struct sway_transaction {scalar_t__ num_configures; scalar_t__ num_waiting; int timer; struct timespec commit_time; } ;
struct TYPE_6__ {scalar_t__ txn_timings; } ;
struct TYPE_5__ {int * instruction; TYPE_1__* sway_container; } ;
struct TYPE_4__ {int title; } ;


 int CLOCK_MONOTONIC ;
 int SWAY_DEBUG ;
 int clock_gettime (int ,struct timespec*) ;
 TYPE_3__ debug ;
 int sway_log (int ,char*,struct sway_transaction*,...) ;
 int transaction_progress_queue () ;
 int wl_event_source_timer_update (int ,int ) ;

__attribute__((used)) static void set_instruction_ready(
  struct sway_transaction_instruction *instruction) {
 struct sway_transaction *transaction = instruction->transaction;

 if (debug.txn_timings) {
  struct timespec now;
  clock_gettime(CLOCK_MONOTONIC, &now);
  struct timespec *start = &transaction->commit_time;
  float ms = (now.tv_sec - start->tv_sec) * 1000 +
   (now.tv_nsec - start->tv_nsec) / 1000000.0;
  sway_log(SWAY_DEBUG, "Transaction %p: %zi/%zi ready in %.1fms (%s)",
    transaction,
    transaction->num_configures - transaction->num_waiting + 1,
    transaction->num_configures, ms,
    instruction->node->sway_container->title);
 }


 if (transaction->num_waiting > 0 && --transaction->num_waiting == 0) {
  sway_log(SWAY_DEBUG, "Transaction %p is ready", transaction);
  wl_event_source_timer_update(transaction->timer, 0);
 }

 instruction->node->instruction = ((void*)0);
 transaction_progress_queue();
}
