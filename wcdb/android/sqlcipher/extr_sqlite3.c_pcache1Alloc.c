
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
struct TYPE_6__ {int szSlot; scalar_t__ nFreeSlot; int bUnderPressure; scalar_t__ nReserve; int mutex; TYPE_2__* pFree; TYPE_1__ grp; } ;
struct TYPE_5__ {struct TYPE_5__* pNext; } ;
typedef int PgHdr1 ;


 int MEMTYPE_PCACHE ;
 int SQLITE_STATUS_PAGECACHE_OVERFLOW ;
 int SQLITE_STATUS_PAGECACHE_SIZE ;
 int SQLITE_STATUS_PAGECACHE_USED ;
 int assert (int) ;
 TYPE_3__ pcache1 ;
 void* sqlite3Malloc (int) ;
 int sqlite3MallocSize (void*) ;
 int sqlite3MemdebugSetType (void*,int ) ;
 int sqlite3StatusHighwater (int ,int) ;
 int sqlite3StatusUp (int ,int) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 int sqlite3_mutex_notheld (int ) ;

__attribute__((used)) static void *pcache1Alloc(int nByte){
  void *p = 0;
  assert( sqlite3_mutex_notheld(pcache1.grp.mutex) );
  if( nByte<=pcache1.szSlot ){
    sqlite3_mutex_enter(pcache1.mutex);
    p = (PgHdr1 *)pcache1.pFree;
    if( p ){
      pcache1.pFree = pcache1.pFree->pNext;
      pcache1.nFreeSlot--;
      pcache1.bUnderPressure = pcache1.nFreeSlot<pcache1.nReserve;
      assert( pcache1.nFreeSlot>=0 );
      sqlite3StatusHighwater(SQLITE_STATUS_PAGECACHE_SIZE, nByte);
      sqlite3StatusUp(SQLITE_STATUS_PAGECACHE_USED, 1);
    }
    sqlite3_mutex_leave(pcache1.mutex);
  }
  if( p==0 ){



    p = sqlite3Malloc(nByte);

    if( p ){
      int sz = sqlite3MallocSize(p);
      sqlite3_mutex_enter(pcache1.mutex);
      sqlite3StatusHighwater(SQLITE_STATUS_PAGECACHE_SIZE, nByte);
      sqlite3StatusUp(SQLITE_STATUS_PAGECACHE_OVERFLOW, sz);
      sqlite3_mutex_leave(pcache1.mutex);
    }

    sqlite3MemdebugSetType(p, MEMTYPE_PCACHE);
  }
  return p;
}
