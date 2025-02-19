
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pPager; int nPage; scalar_t__ bDoTruncate; scalar_t__ autoVacuum; } ;
struct TYPE_7__ {scalar_t__ inTrans; TYPE_2__* pBt; } ;
typedef TYPE_1__ Btree ;
typedef TYPE_2__ BtShared ;


 int SQLITE_OK ;
 scalar_t__ TRANS_WRITE ;
 int autoVacuumCommit (TYPE_2__*) ;
 int sqlite3BtreeEnter (TYPE_1__*) ;
 int sqlite3BtreeLeave (TYPE_1__*) ;
 int sqlite3PagerCommitPhaseOne (int ,char const*,int ) ;
 int sqlite3PagerTruncateImage (int ,int ) ;

int sqlite3BtreeCommitPhaseOne(Btree *p, const char *zMaster){
  int rc = SQLITE_OK;
  if( p->inTrans==TRANS_WRITE ){
    BtShared *pBt = p->pBt;
    sqlite3BtreeEnter(p);

    if( pBt->autoVacuum ){
      rc = autoVacuumCommit(pBt);
      if( rc!=SQLITE_OK ){
        sqlite3BtreeLeave(p);
        return rc;
      }
    }
    if( pBt->bDoTruncate ){
      sqlite3PagerTruncateImage(pBt->pPager, pBt->nPage);
    }

    rc = sqlite3PagerCommitPhaseOne(pBt->pPager, zMaster, 0);
    sqlite3BtreeLeave(p);
  }
  return rc;
}
