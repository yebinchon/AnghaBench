
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_transaction {scalar_t__ num_waiting; } ;


 int SWAY_DEBUG ;
 int sway_log (int ,char*,struct sway_transaction*,scalar_t__) ;
 int transaction_progress_queue () ;

__attribute__((used)) static int handle_timeout(void *data) {
 struct sway_transaction *transaction = data;
 sway_log(SWAY_DEBUG, "Transaction %p timed out (%zi waiting)",
   transaction, transaction->num_waiting);
 transaction->num_waiting = 0;
 transaction_progress_queue();
 return 0;
}
