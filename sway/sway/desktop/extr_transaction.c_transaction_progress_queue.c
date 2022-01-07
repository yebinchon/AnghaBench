
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_transaction {scalar_t__ num_waiting; } ;
struct TYPE_4__ {int length; struct sway_transaction** items; } ;
struct TYPE_3__ {TYPE_2__* transactions; int idle_inhibit_manager_v1; } ;


 int list_del (TYPE_2__*,int ) ;
 TYPE_1__ server ;
 int sway_idle_inhibit_v1_check_active (int ) ;
 int transaction_apply (struct sway_transaction*) ;
 int transaction_commit (struct sway_transaction*) ;
 int transaction_destroy (struct sway_transaction*) ;
 scalar_t__ transaction_same_nodes (struct sway_transaction*,struct sway_transaction*) ;

__attribute__((used)) static void transaction_progress_queue(void) {
 if (!server.transactions->length) {
  return;
 }


 struct sway_transaction *transaction = server.transactions->items[0];
 if (transaction->num_waiting) {
  return;
 }
 transaction_apply(transaction);
 transaction_destroy(transaction);
 list_del(server.transactions, 0);

 if (!server.transactions->length) {
  sway_idle_inhibit_v1_check_active(server.idle_inhibit_manager_v1);
  return;
 }



 while (server.transactions->length >= 2) {
  struct sway_transaction *a = server.transactions->items[0];
  struct sway_transaction *b = server.transactions->items[1];
  if (transaction_same_nodes(a, b)) {
   list_del(server.transactions, 0);
   transaction_destroy(a);
  } else {
   break;
  }
 }

 transaction = server.transactions->items[0];
 transaction_commit(transaction);
 transaction_progress_queue();
}
