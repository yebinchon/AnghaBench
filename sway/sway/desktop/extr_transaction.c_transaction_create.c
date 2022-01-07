
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_transaction {int instructions; } ;


 struct sway_transaction* calloc (int,int) ;
 int create_list () ;
 int sway_assert (struct sway_transaction*,char*) ;

__attribute__((used)) static struct sway_transaction *transaction_create(void) {
 struct sway_transaction *transaction =
  calloc(1, sizeof(struct sway_transaction));
 if (!sway_assert(transaction, "Unable to allocate transaction")) {
  return ((void*)0);
 }
 transaction->instructions = create_list();
 return transaction;
}
