
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int nVdbeRead; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_12__ {scalar_t__ nTransaction; scalar_t__ inTransaction; scalar_t__ bDoTruncate; } ;
struct TYPE_11__ {scalar_t__ inTrans; TYPE_1__* db; TYPE_3__* pBt; } ;
typedef TYPE_2__ Btree ;
typedef TYPE_3__ BtShared ;


 scalar_t__ TRANS_NONE ;
 scalar_t__ TRANS_READ ;
 int assert (int ) ;
 int btreeIntegrity (TYPE_2__*) ;
 int clearAllSharedCacheTableLocks (TYPE_2__*) ;
 int downgradeAllSharedCacheTableLocks (TYPE_2__*) ;
 int sqlite3BtreeHoldsMutex (TYPE_2__*) ;
 int unlockBtreeIfUnused (TYPE_3__*) ;

__attribute__((used)) static void btreeEndTransaction(Btree *p){
  BtShared *pBt = p->pBt;
  sqlite3 *db = p->db;
  assert( sqlite3BtreeHoldsMutex(p) );


  pBt->bDoTruncate = 0;

  if( p->inTrans>TRANS_NONE && db->nVdbeRead>1 ){



    downgradeAllSharedCacheTableLocks(p);
    p->inTrans = TRANS_READ;
  }else{




    if( p->inTrans!=TRANS_NONE ){
      clearAllSharedCacheTableLocks(p);
      pBt->nTransaction--;
      if( 0==pBt->nTransaction ){
        pBt->inTransaction = TRANS_NONE;
      }
    }



    p->inTrans = TRANS_NONE;
    unlockBtreeIfUnused(pBt);
  }

  btreeIntegrity(p);
}
