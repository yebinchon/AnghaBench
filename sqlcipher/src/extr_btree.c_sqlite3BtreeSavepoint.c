
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int btsFlags; scalar_t__ nPage; TYPE_1__* pPage1; int pPager; } ;
struct TYPE_10__ {scalar_t__ inTrans; TYPE_3__* pBt; } ;
struct TYPE_9__ {scalar_t__ aData; } ;
typedef TYPE_2__ Btree ;
typedef TYPE_3__ BtShared ;


 int BTS_INITIALLY_EMPTY ;
 int SAVEPOINT_RELEASE ;
 int SAVEPOINT_ROLLBACK ;
 int SQLITE_OK ;
 scalar_t__ TRANS_WRITE ;
 int assert (int) ;
 scalar_t__ get4byte (scalar_t__) ;
 int newDatabase (TYPE_3__*) ;
 int saveAllCursors (TYPE_3__*,int ,int ) ;
 int sqlite3BtreeEnter (TYPE_2__*) ;
 int sqlite3BtreeLeave (TYPE_2__*) ;
 int sqlite3PagerSavepoint (int ,int,int) ;

int sqlite3BtreeSavepoint(Btree *p, int op, int iSavepoint){
  int rc = SQLITE_OK;
  if( p && p->inTrans==TRANS_WRITE ){
    BtShared *pBt = p->pBt;
    assert( op==SAVEPOINT_RELEASE || op==SAVEPOINT_ROLLBACK );
    assert( iSavepoint>=0 || (iSavepoint==-1 && op==SAVEPOINT_ROLLBACK) );
    sqlite3BtreeEnter(p);
    if( op==SAVEPOINT_ROLLBACK ){
      rc = saveAllCursors(pBt, 0, 0);
    }
    if( rc==SQLITE_OK ){
      rc = sqlite3PagerSavepoint(pBt->pPager, op, iSavepoint);
    }
    if( rc==SQLITE_OK ){
      if( iSavepoint<0 && (pBt->btsFlags & BTS_INITIALLY_EMPTY)!=0 ){
        pBt->nPage = 0;
      }
      rc = newDatabase(pBt);
      pBt->nPage = get4byte(28 + pBt->pPage1->aData);




      assert( pBt->nPage>0 );
    }
    sqlite3BtreeLeave(p);
  }
  return rc;
}
