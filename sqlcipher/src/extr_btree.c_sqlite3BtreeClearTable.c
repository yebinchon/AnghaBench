
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ inTrans; int * pBt; } ;
typedef int Pgno ;
typedef TYPE_1__ Btree ;
typedef int BtShared ;


 int SQLITE_OK ;
 scalar_t__ TRANS_WRITE ;
 int assert (int) ;
 int clearDatabasePage (int *,int ,int ,int*) ;
 int invalidateIncrblobCursors (TYPE_1__*,int ,int ,int) ;
 int saveAllCursors (int *,int ,int ) ;
 int sqlite3BtreeEnter (TYPE_1__*) ;
 int sqlite3BtreeLeave (TYPE_1__*) ;

int sqlite3BtreeClearTable(Btree *p, int iTable, int *pnChange){
  int rc;
  BtShared *pBt = p->pBt;
  sqlite3BtreeEnter(p);
  assert( p->inTrans==TRANS_WRITE );

  rc = saveAllCursors(pBt, (Pgno)iTable, 0);

  if( SQLITE_OK==rc ){



    invalidateIncrblobCursors(p, (Pgno)iTable, 0, 1);
    rc = clearDatabasePage(pBt, (Pgno)iTable, 0, pnChange);
  }
  sqlite3BtreeLeave(p);
  return rc;
}
