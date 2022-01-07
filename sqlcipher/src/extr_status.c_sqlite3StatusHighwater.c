
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ sqlite3StatValueType ;
struct TYPE_2__ {scalar_t__* mxValue; scalar_t__* nowValue; } ;


 int ArraySize (scalar_t__*) ;
 int SQLITE_STATUS_MALLOC_SIZE ;
 int SQLITE_STATUS_PAGECACHE_SIZE ;
 int SQLITE_STATUS_PARSER_STACK ;
 int assert (int) ;
 int sqlite3MallocMutex () ;
 int sqlite3Pcache1Mutex () ;
 int sqlite3_mutex_held (int ) ;
 scalar_t__* statMutex ;
 TYPE_1__ wsdStat ;
 int wsdStatInit ;

void sqlite3StatusHighwater(int op, int X){
  sqlite3StatValueType newValue;
  wsdStatInit;
  assert( X>=0 );
  newValue = (sqlite3StatValueType)X;
  assert( op>=0 && op<ArraySize(wsdStat.nowValue) );
  assert( op>=0 && op<ArraySize(statMutex) );
  assert( sqlite3_mutex_held(statMutex[op] ? sqlite3Pcache1Mutex()
                                           : sqlite3MallocMutex()) );
  assert( op==SQLITE_STATUS_MALLOC_SIZE
          || op==SQLITE_STATUS_PAGECACHE_SIZE
          || op==SQLITE_STATUS_PARSER_STACK );
  if( newValue>wsdStat.mxValue[op] ){
    wsdStat.mxValue[op] = newValue;
  }
}
