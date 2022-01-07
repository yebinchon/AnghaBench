
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_6__ {int alarmThreshold; int nearlyFull; int mutex; } ;
struct TYPE_4__ {int (* xRoundup ) (int) ;void* (* xMalloc ) (int) ;} ;
struct TYPE_5__ {TYPE_1__ m; } ;


 scalar_t__ SQLITE_MAX_MEMORY ;
 int SQLITE_STATUS_MALLOC_COUNT ;
 int SQLITE_STATUS_MALLOC_SIZE ;
 int SQLITE_STATUS_MEMORY_USED ;
 int assert (int) ;
 TYPE_3__ mem0 ;
 TYPE_2__ sqlite3GlobalConfig ;
 int sqlite3MallocAlarm (int) ;
 int sqlite3MallocSize (void*) ;
 int sqlite3StatusHighwater (int ,int) ;
 int sqlite3StatusUp (int ,int) ;
 scalar_t__ sqlite3StatusValue (int ) ;
 int sqlite3_mutex_held (int ) ;
 int stub1 (int) ;
 void* stub2 (int) ;
 void* stub3 (int) ;

__attribute__((used)) static void mallocWithAlarm(int n, void **pp){
  void *p;
  int nFull;
  assert( sqlite3_mutex_held(mem0.mutex) );
  assert( n>0 );






  nFull = sqlite3GlobalConfig.m.xRoundup(n);
  sqlite3StatusHighwater(SQLITE_STATUS_MALLOC_SIZE, n);
  if( mem0.alarmThreshold>0 ){
    sqlite3_int64 nUsed = sqlite3StatusValue(SQLITE_STATUS_MEMORY_USED);
    if( nUsed >= mem0.alarmThreshold - nFull ){
      mem0.nearlyFull = 1;
      sqlite3MallocAlarm(nFull);
    }else{
      mem0.nearlyFull = 0;
    }
  }
  p = sqlite3GlobalConfig.m.xMalloc(nFull);






  if( p ){
    nFull = sqlite3MallocSize(p);
    sqlite3StatusUp(SQLITE_STATUS_MEMORY_USED, nFull);
    sqlite3StatusUp(SQLITE_STATUS_MALLOC_COUNT, 1);
  }
  *pp = p;
}
