
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int flags; int nSavepoint; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_22__ {int iTable; struct TYPE_22__* pNext; int eLock; TYPE_3__* pBtree; } ;
struct TYPE_21__ {scalar_t__ inTransaction; int btsFlags; scalar_t__ nPage; int pPager; TYPE_2__* pPage1; TYPE_3__* pWriter; TYPE_5__* pLock; int nTransaction; int bDoTruncate; } ;
struct TYPE_20__ {scalar_t__ inTrans; TYPE_1__* db; TYPE_5__ lock; scalar_t__ sharable; TYPE_4__* pBt; } ;
struct TYPE_19__ {int * aData; int pDbPage; } ;
typedef TYPE_2__ MemPage ;
typedef TYPE_3__ Btree ;
typedef TYPE_4__ BtShared ;
typedef TYPE_5__ BtLock ;


 int BTS_EXCLUSIVE ;
 int BTS_INITIALLY_EMPTY ;
 int BTS_PENDING ;
 int BTS_READ_ONLY ;
 scalar_t__ IfNotOmitAV (int ) ;
 int MASTER_ROOT ;
 int READ_LOCK ;
 int SQLITE_BUSY ;
 int SQLITE_BUSY_SNAPSHOT ;
 int SQLITE_LOCKED_SHAREDCACHE ;
 int SQLITE_OK ;
 int SQLITE_READONLY ;
 int SQLITE_ResetDatabase ;
 scalar_t__ TRANS_NONE ;
 scalar_t__ TRANS_READ ;
 scalar_t__ TRANS_WRITE ;
 int assert (int) ;
 int btreeIntegrity (TYPE_3__*) ;
 scalar_t__ btreeInvokeBusyHandler (TYPE_4__*) ;
 scalar_t__ get4byte (int *) ;
 int lockBtree (TYPE_4__*) ;
 int newDatabase (TYPE_4__*) ;
 int put4byte (int *,scalar_t__) ;
 int querySharedCacheTableLock (TYPE_3__*,int ,int ) ;
 int sqlite3BtreeEnter (TYPE_3__*) ;
 int sqlite3BtreeLeave (TYPE_3__*) ;
 int sqlite3ConnectionBlocked (TYPE_1__*,TYPE_1__*) ;
 int sqlite3PagerBegin (int ,int,int ) ;
 scalar_t__ sqlite3PagerIsreadonly (int ) ;
 int sqlite3PagerOpenSavepoint (int ,int ) ;
 int sqlite3PagerResetLockTimeout (int ) ;
 int sqlite3PagerWrite (int ) ;
 int sqlite3TempInMemory (TYPE_1__*) ;
 int unlockBtreeIfUnused (TYPE_4__*) ;

int sqlite3BtreeBeginTrans(Btree *p, int wrflag, int *pSchemaVersion){
  BtShared *pBt = p->pBt;
  int rc = SQLITE_OK;

  sqlite3BtreeEnter(p);
  btreeIntegrity(p);





  if( p->inTrans==TRANS_WRITE || (p->inTrans==TRANS_READ && !wrflag) ){
    goto trans_begun;
  }
  assert( pBt->inTransaction==TRANS_WRITE || IfNotOmitAV(pBt->bDoTruncate)==0 );

  if( (p->db->flags & SQLITE_ResetDatabase)
   && sqlite3PagerIsreadonly(pBt->pPager)==0
  ){
    pBt->btsFlags &= ~BTS_READ_ONLY;
  }


  if( (pBt->btsFlags & BTS_READ_ONLY)!=0 && wrflag ){
    rc = SQLITE_READONLY;
    goto trans_begun;
  }


  {
    sqlite3 *pBlock = 0;




    if( (wrflag && pBt->inTransaction==TRANS_WRITE)
     || (pBt->btsFlags & BTS_PENDING)!=0
    ){
      pBlock = pBt->pWriter->db;
    }else if( wrflag>1 ){
      BtLock *pIter;
      for(pIter=pBt->pLock; pIter; pIter=pIter->pNext){
        if( pIter->pBtree!=p ){
          pBlock = pIter->pBtree->db;
          break;
        }
      }
    }
    if( pBlock ){
      sqlite3ConnectionBlocked(p->db, pBlock);
      rc = SQLITE_LOCKED_SHAREDCACHE;
      goto trans_begun;
    }
  }





  rc = querySharedCacheTableLock(p, MASTER_ROOT, READ_LOCK);
  if( SQLITE_OK!=rc ) goto trans_begun;

  pBt->btsFlags &= ~BTS_INITIALLY_EMPTY;
  if( pBt->nPage==0 ) pBt->btsFlags |= BTS_INITIALLY_EMPTY;
  do {







    while( pBt->pPage1==0 && SQLITE_OK==(rc = lockBtree(pBt)) );

    if( rc==SQLITE_OK && wrflag ){
      if( (pBt->btsFlags & BTS_READ_ONLY)!=0 ){
        rc = SQLITE_READONLY;
      }else{
        rc = sqlite3PagerBegin(pBt->pPager,wrflag>1,sqlite3TempInMemory(p->db));
        if( rc==SQLITE_OK ){
          rc = newDatabase(pBt);
        }else if( rc==SQLITE_BUSY_SNAPSHOT && pBt->inTransaction==TRANS_NONE ){



          rc = SQLITE_BUSY;
        }
      }
    }

    if( rc!=SQLITE_OK ){
      unlockBtreeIfUnused(pBt);
    }
  }while( (rc&0xFF)==SQLITE_BUSY && pBt->inTransaction==TRANS_NONE &&
          btreeInvokeBusyHandler(pBt) );
  sqlite3PagerResetLockTimeout(pBt->pPager);

  if( rc==SQLITE_OK ){
    if( p->inTrans==TRANS_NONE ){
      pBt->nTransaction++;

      if( p->sharable ){
        assert( p->lock.pBtree==p && p->lock.iTable==1 );
        p->lock.eLock = READ_LOCK;
        p->lock.pNext = pBt->pLock;
        pBt->pLock = &p->lock;
      }

    }
    p->inTrans = (wrflag?TRANS_WRITE:TRANS_READ);
    if( p->inTrans>pBt->inTransaction ){
      pBt->inTransaction = p->inTrans;
    }
    if( wrflag ){
      MemPage *pPage1 = pBt->pPage1;

      assert( !pBt->pWriter );
      pBt->pWriter = p;
      pBt->btsFlags &= ~BTS_EXCLUSIVE;
      if( wrflag>1 ) pBt->btsFlags |= BTS_EXCLUSIVE;
      if( pBt->nPage!=get4byte(&pPage1->aData[28]) ){
        rc = sqlite3PagerWrite(pPage1->pDbPage);
        if( rc==SQLITE_OK ){
          put4byte(&pPage1->aData[28], pBt->nPage);
        }
      }
    }
  }

trans_begun:
  if( rc==SQLITE_OK ){
    if( pSchemaVersion ){
      *pSchemaVersion = get4byte(&pBt->pPage1->aData[40]);
    }
    if( wrflag ){




      rc = sqlite3PagerOpenSavepoint(pBt->pPager, p->db->nSavepoint);
    }
  }

  btreeIntegrity(p);
  sqlite3BtreeLeave(p);
  return rc;
}
