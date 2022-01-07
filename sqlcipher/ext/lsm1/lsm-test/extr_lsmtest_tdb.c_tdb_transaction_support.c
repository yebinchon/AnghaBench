
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ TestDb ;
struct TYPE_4__ {scalar_t__ xBegin; } ;


 scalar_t__ error_transaction_function ;

int tdb_transaction_support(TestDb *pDb){
  return (pDb->pMethods->xBegin != error_transaction_function);
}
