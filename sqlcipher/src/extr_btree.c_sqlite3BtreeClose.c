
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {int mutex; } ;
struct TYPE_18__ {TYPE_3__* pBtree; struct TYPE_18__* pNext; } ;
struct TYPE_17__ {scalar_t__ wantToLock; scalar_t__ locked; TYPE_2__* pPrev; TYPE_1__* pNext; scalar_t__ pSchema; int (* xFreeSchema ) (scalar_t__) ;TYPE_7__* db; int pPager; TYPE_5__* pCursor; int sharable; struct TYPE_17__* pBt; } ;
struct TYPE_16__ {TYPE_1__* pNext; } ;
struct TYPE_15__ {TYPE_2__* pPrev; } ;
typedef TYPE_3__ Btree ;
typedef TYPE_3__ BtShared ;
typedef TYPE_5__ BtCursor ;


 int SQLITE_OK ;
 int assert (int) ;
 int freeTempSpace (TYPE_3__*) ;
 scalar_t__ removeFromSharingList (TYPE_3__*) ;
 int sqlite3BtreeCloseCursor (TYPE_5__*) ;
 int sqlite3BtreeEnter (TYPE_3__*) ;
 int sqlite3BtreeLeave (TYPE_3__*) ;
 int sqlite3BtreeRollback (TYPE_3__*,int,int ) ;
 int sqlite3DbFree (int ,scalar_t__) ;
 int sqlite3PagerClose (int ,TYPE_7__*) ;
 int sqlite3_free (TYPE_3__*) ;
 int sqlite3_mutex_held (int ) ;
 int stub1 (scalar_t__) ;

int sqlite3BtreeClose(Btree *p){
  BtShared *pBt = p->pBt;
  BtCursor *pCur;


  assert( sqlite3_mutex_held(p->db->mutex) );
  sqlite3BtreeEnter(p);
  pCur = pBt->pCursor;
  while( pCur ){
    BtCursor *pTmp = pCur;
    pCur = pCur->pNext;
    if( pTmp->pBtree==p ){
      sqlite3BtreeCloseCursor(pTmp);
    }
  }





  sqlite3BtreeRollback(p, SQLITE_OK, 0);
  sqlite3BtreeLeave(p);





  assert( p->wantToLock==0 && p->locked==0 );
  if( !p->sharable || removeFromSharingList(pBt) ){





    assert( !pBt->pCursor );
    sqlite3PagerClose(pBt->pPager, p->db);
    if( pBt->xFreeSchema && pBt->pSchema ){
      pBt->xFreeSchema(pBt->pSchema);
    }
    sqlite3DbFree(0, pBt->pSchema);
    freeTempSpace(pBt);
    sqlite3_free(pBt);
  }


  assert( p->wantToLock==0 );
  assert( p->locked==0 );
  if( p->pPrev ) p->pPrev->pNext = p->pNext;
  if( p->pNext ) p->pNext->pPrev = p->pPrev;


  sqlite3_free(p);
  return SQLITE_OK;
}
