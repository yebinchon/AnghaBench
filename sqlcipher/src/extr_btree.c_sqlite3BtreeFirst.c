
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ pgnoRoot; TYPE_1__* pPage; TYPE_3__* pBtree; } ;
struct TYPE_11__ {TYPE_2__* db; } ;
struct TYPE_10__ {int mutex; } ;
struct TYPE_9__ {scalar_t__ nCell; } ;
typedef TYPE_4__ BtCursor ;


 int SQLITE_EMPTY ;
 int SQLITE_OK ;
 int assert (int) ;
 int cursorOwnsBtShared (TYPE_4__*) ;
 int moveToLeftmost (TYPE_4__*) ;
 int moveToRoot (TYPE_4__*) ;
 int sqlite3_mutex_held (int ) ;

int sqlite3BtreeFirst(BtCursor *pCur, int *pRes){
  int rc;

  assert( cursorOwnsBtShared(pCur) );
  assert( sqlite3_mutex_held(pCur->pBtree->db->mutex) );
  rc = moveToRoot(pCur);
  if( rc==SQLITE_OK ){
    assert( pCur->pPage->nCell>0 );
    *pRes = 0;
    rc = moveToLeftmost(pCur);
  }else if( rc==SQLITE_EMPTY ){
    assert( pCur->pgnoRoot==0 || pCur->pPage->nCell==0 );
    *pRes = 1;
    rc = SQLITE_OK;
  }
  return rc;
}
