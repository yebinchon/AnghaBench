
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* nowValue; } ;


 int ArraySize (int*) ;
 int assert (int) ;
 int sqlite3MallocMutex () ;
 int sqlite3Pcache1Mutex () ;
 int sqlite3_mutex_held (int ) ;
 int* statMutex ;
 TYPE_1__ wsdStat ;
 int wsdStatInit ;

void sqlite3StatusDown(int op, int N){
  wsdStatInit;
  assert( N>=0 );
  assert( op>=0 && op<ArraySize(statMutex) );
  assert( sqlite3_mutex_held(statMutex[op] ? sqlite3Pcache1Mutex()
                                           : sqlite3MallocMutex()) );
  assert( op>=0 && op<ArraySize(wsdStat.nowValue) );
  wsdStat.nowValue[op] -= N;
}
