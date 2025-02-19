
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int curFlags; scalar_t__ eState; int skipNext; struct TYPE_12__* pNext; } ;
struct TYPE_11__ {TYPE_1__* pBt; } ;
struct TYPE_10__ {TYPE_3__* pCursor; } ;
typedef TYPE_2__ Btree ;
typedef TYPE_3__ BtCursor ;


 int BTCF_WriteFlag ;
 scalar_t__ CURSOR_FAULT ;
 scalar_t__ CURSOR_SKIPNEXT ;
 scalar_t__ CURSOR_VALID ;
 int SQLITE_OK ;
 int assert (int) ;
 int btreeReleaseAllCursorPages (TYPE_3__*) ;
 int saveCursorPosition (TYPE_3__*) ;
 int sqlite3BtreeClearCursor (TYPE_3__*) ;
 int sqlite3BtreeEnter (TYPE_2__*) ;
 int sqlite3BtreeLeave (TYPE_2__*) ;

int sqlite3BtreeTripAllCursors(Btree *pBtree, int errCode, int writeOnly){
  BtCursor *p;
  int rc = SQLITE_OK;

  assert( (writeOnly==0 || writeOnly==1) && BTCF_WriteFlag==1 );
  if( pBtree ){
    sqlite3BtreeEnter(pBtree);
    for(p=pBtree->pBt->pCursor; p; p=p->pNext){
      if( writeOnly && (p->curFlags & BTCF_WriteFlag)==0 ){
        if( p->eState==CURSOR_VALID || p->eState==CURSOR_SKIPNEXT ){
          rc = saveCursorPosition(p);
          if( rc!=SQLITE_OK ){
            (void)sqlite3BtreeTripAllCursors(pBtree, rc, 0);
            break;
          }
        }
      }else{
        sqlite3BtreeClearCursor(p);
        p->eState = CURSOR_FAULT;
        p->skipNext = errCode;
      }
      btreeReleaseAllCursorPages(p);
    }
    sqlite3BtreeLeave(pBtree);
  }
  return rc;
}
