
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
struct TYPE_2__ {scalar_t__* nowValue; } ;


 int ArraySize (scalar_t__*) ;
 int assert (int) ;
 int sqlite3MallocMutex () ;
 int sqlite3Pcache1Mutex () ;
 int sqlite3_mutex_held (int ) ;
 scalar_t__* statMutex ;
 TYPE_1__ wsdStat ;
 int wsdStatInit ;

sqlite3_int64 sqlite3StatusValue(int op){
  wsdStatInit;
  assert( op>=0 && op<ArraySize(wsdStat.nowValue) );
  assert( op>=0 && op<ArraySize(statMutex) );
  assert( sqlite3_mutex_held(statMutex[op] ? sqlite3Pcache1Mutex()
                                           : sqlite3MallocMutex()) );
  return wsdStat.nowValue[op];
}
