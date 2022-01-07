
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_6__ {int alarmThreshold; int mutex; } ;
struct TYPE_4__ {int (* xRoundup ) (int) ;void* (* xRealloc ) (void*,int) ;} ;
struct TYPE_5__ {TYPE_1__ m; scalar_t__ bMemstat; } ;


 int EIGHT_BYTE_ALIGNMENT (void*) ;
 scalar_t__ MEMTYPE_HEAP ;
 int SQLITE_STATUS_MALLOC_SIZE ;
 int SQLITE_STATUS_MEMORY_USED ;
 int assert (int ) ;
 TYPE_3__ mem0 ;
 TYPE_2__ sqlite3GlobalConfig ;
 void* sqlite3Malloc (int) ;
 int sqlite3MallocAlarm (int) ;
 int sqlite3MallocSize (void*) ;
 int sqlite3MemdebugHasType (void*,scalar_t__) ;
 int sqlite3MemdebugNoType (void*,int ) ;
 int sqlite3StatusHighwater (int ,int) ;
 int sqlite3StatusUp (int ,int) ;
 int sqlite3StatusValue (int ) ;
 int sqlite3_free (void*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 int stub1 (int) ;
 void* stub2 (void*,int) ;
 void* stub3 (void*,int) ;
 void* stub4 (void*,int) ;

void *sqlite3Realloc(void *pOld, u64 nBytes){
  int nOld, nNew, nDiff;
  void *pNew;
  assert( sqlite3MemdebugHasType(pOld, MEMTYPE_HEAP) );
  assert( sqlite3MemdebugNoType(pOld, (u8)~MEMTYPE_HEAP) );
  if( pOld==0 ){
    return sqlite3Malloc(nBytes);
  }
  if( nBytes==0 ){
    sqlite3_free(pOld);
    return 0;
  }
  if( nBytes>=0x7fffff00 ){

    return 0;
  }
  nOld = sqlite3MallocSize(pOld);



  nNew = sqlite3GlobalConfig.m.xRoundup((int)nBytes);
  if( nOld==nNew ){
    pNew = pOld;
  }else if( sqlite3GlobalConfig.bMemstat ){
    sqlite3_mutex_enter(mem0.mutex);
    sqlite3StatusHighwater(SQLITE_STATUS_MALLOC_SIZE, (int)nBytes);
    nDiff = nNew - nOld;
    if( nDiff>0 && sqlite3StatusValue(SQLITE_STATUS_MEMORY_USED) >=
          mem0.alarmThreshold-nDiff ){
      sqlite3MallocAlarm(nDiff);
    }
    pNew = sqlite3GlobalConfig.m.xRealloc(pOld, nNew);
    if( pNew==0 && mem0.alarmThreshold>0 ){
      sqlite3MallocAlarm((int)nBytes);
      pNew = sqlite3GlobalConfig.m.xRealloc(pOld, nNew);
    }
    if( pNew ){
      nNew = sqlite3MallocSize(pNew);
      sqlite3StatusUp(SQLITE_STATUS_MEMORY_USED, nNew-nOld);
    }
    sqlite3_mutex_leave(mem0.mutex);
  }else{
    pNew = sqlite3GlobalConfig.m.xRealloc(pOld, nNew);
  }
  assert( EIGHT_BYTE_ALIGNMENT(pNew) );
  return pNew;
}
