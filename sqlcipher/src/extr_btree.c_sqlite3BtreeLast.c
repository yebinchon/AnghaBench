
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ eState; int curFlags; int iPage; scalar_t__* aiIdx; int ix; scalar_t__ pgnoRoot; TYPE_4__* pPage; TYPE_3__** apPage; TYPE_2__* pBtree; } ;
struct TYPE_13__ {int nCell; int leaf; } ;
struct TYPE_12__ {scalar_t__ nCell; } ;
struct TYPE_11__ {TYPE_1__* db; } ;
struct TYPE_10__ {int mutex; } ;
typedef TYPE_5__ BtCursor ;


 int BTCF_AtLast ;
 scalar_t__ CURSOR_VALID ;
 int SQLITE_EMPTY ;
 int SQLITE_OK ;
 int assert (int) ;
 int cursorOwnsBtShared (TYPE_5__*) ;
 int moveToRightmost (TYPE_5__*) ;
 int moveToRoot (TYPE_5__*) ;
 int sqlite3_mutex_held (int ) ;

int sqlite3BtreeLast(BtCursor *pCur, int *pRes){
  int rc;

  assert( cursorOwnsBtShared(pCur) );
  assert( sqlite3_mutex_held(pCur->pBtree->db->mutex) );


  if( CURSOR_VALID==pCur->eState && (pCur->curFlags & BTCF_AtLast)!=0 ){
    return SQLITE_OK;
  }

  rc = moveToRoot(pCur);
  if( rc==SQLITE_OK ){
    assert( pCur->eState==CURSOR_VALID );
    *pRes = 0;
    rc = moveToRightmost(pCur);
    if( rc==SQLITE_OK ){
      pCur->curFlags |= BTCF_AtLast;
    }else{
      pCur->curFlags &= ~BTCF_AtLast;
    }
  }else if( rc==SQLITE_EMPTY ){
    assert( pCur->pgnoRoot==0 || pCur->pPage->nCell==0 );
    *pRes = 1;
    rc = SQLITE_OK;
  }
  return rc;
}
