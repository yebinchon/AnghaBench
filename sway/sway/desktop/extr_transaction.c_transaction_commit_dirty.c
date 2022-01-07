
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sway_transaction {int dummy; } ;
struct sway_node {int dirty; } ;
struct TYPE_6__ {int length; } ;
struct TYPE_5__ {TYPE_3__* transactions; TYPE_1__* dirty_nodes; } ;
struct TYPE_4__ {int length; struct sway_node** items; } ;


 int list_add (TYPE_3__*,struct sway_transaction*) ;
 TYPE_2__ server ;
 int transaction_add_node (struct sway_transaction*,struct sway_node*) ;
 int transaction_commit (struct sway_transaction*) ;
 struct sway_transaction* transaction_create () ;
 int transaction_progress_queue () ;

void transaction_commit_dirty(void) {
 if (!server.dirty_nodes->length) {
  return;
 }
 struct sway_transaction *transaction = transaction_create();
 if (!transaction) {
  return;
 }
 for (int i = 0; i < server.dirty_nodes->length; ++i) {
  struct sway_node *node = server.dirty_nodes->items[i];
  transaction_add_node(transaction, node);
  node->dirty = 0;
 }
 server.dirty_nodes->length = 0;

 list_add(server.transactions, transaction);



 if (server.transactions->length == 1) {
  transaction_commit(transaction);


  transaction_progress_queue();
 }
}
