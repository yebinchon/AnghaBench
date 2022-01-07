
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {scalar_t__ eLock; int iTable; TYPE_1__* pBtree; struct TYPE_10__* pNext; } ;
struct TYPE_9__ {scalar_t__ inTransaction; int btsFlags; TYPE_1__* pWriter; TYPE_3__* pLock; } ;
struct TYPE_8__ {scalar_t__ inTrans; TYPE_4__* db; int sharable; TYPE_2__* pBt; } ;
typedef int Pgno ;
typedef TYPE_1__ Btree ;
typedef TYPE_2__ BtShared ;
typedef TYPE_3__ BtLock ;


 int BTS_EXCLUSIVE ;
 int BTS_PENDING ;
 scalar_t__ READ_LOCK ;
 int SQLITE_LOCKED_SHAREDCACHE ;
 int SQLITE_OK ;
 int SQLITE_ReadUncommit ;
 scalar_t__ TRANS_WRITE ;
 scalar_t__ WRITE_LOCK ;
 int assert (int) ;
 int sqlite3BtreeHoldsMutex (TYPE_1__*) ;
 int sqlite3ConnectionBlocked (TYPE_4__*,TYPE_4__*) ;

__attribute__((used)) static int querySharedCacheTableLock(Btree *p, Pgno iTab, u8 eLock){
  BtShared *pBt = p->pBt;
  BtLock *pIter;

  assert( sqlite3BtreeHoldsMutex(p) );
  assert( eLock==READ_LOCK || eLock==WRITE_LOCK );
  assert( p->db!=0 );
  assert( !(p->db->flags&SQLITE_ReadUncommit)||eLock==WRITE_LOCK||iTab==1 );





  assert( eLock==READ_LOCK || (p==pBt->pWriter && p->inTrans==TRANS_WRITE) );
  assert( eLock==READ_LOCK || pBt->inTransaction==TRANS_WRITE );


  if( !p->sharable ){
    return SQLITE_OK;
  }




  if( pBt->pWriter!=p && (pBt->btsFlags & BTS_EXCLUSIVE)!=0 ){
    sqlite3ConnectionBlocked(p->db, pBt->pWriter->db);
    return SQLITE_LOCKED_SHAREDCACHE;
  }

  for(pIter=pBt->pLock; pIter; pIter=pIter->pNext){
    assert( pIter->eLock==READ_LOCK || pIter->eLock==WRITE_LOCK );
    assert( eLock==READ_LOCK || pIter->pBtree==p || pIter->eLock==READ_LOCK);
    if( pIter->pBtree!=p && pIter->iTable==iTab && pIter->eLock!=eLock ){
      sqlite3ConnectionBlocked(p->db, pIter->pBtree->db);
      if( eLock==WRITE_LOCK ){
        assert( p==pBt->pWriter );
        pBt->btsFlags |= BTS_PENDING;
      }
      return SQLITE_LOCKED_SHAREDCACHE;
    }
  }
  return SQLITE_OK;
}
