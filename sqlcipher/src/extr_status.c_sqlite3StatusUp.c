
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* nowValue; scalar_t__* mxValue; } ;


 int ArraySize (scalar_t__*) ;
 int assert (int) ;
 int sqlite3MallocMutex () ;
 int sqlite3Pcache1Mutex () ;
 int sqlite3_mutex_held (int ) ;
 scalar_t__* statMutex ;
 TYPE_1__ wsdStat ;
 int wsdStatInit ;

void sqlite3StatusUp(int op, int N){
  wsdStatInit;
  assert( op>=0 && op<ArraySize(wsdStat.nowValue) );
  assert( op>=0 && op<ArraySize(statMutex) );
  assert( sqlite3_mutex_held(statMutex[op] ? sqlite3Pcache1Mutex()
                                           : sqlite3MallocMutex()) );
  wsdStat.nowValue[op] += N;
  if( wsdStat.nowValue[op]>wsdStat.mxValue[op] ){
    wsdStat.mxValue[op] = wsdStat.nowValue[op];
  }
}
