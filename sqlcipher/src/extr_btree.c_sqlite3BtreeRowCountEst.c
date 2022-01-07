
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t u8 ;
typedef int i64 ;
struct TYPE_12__ {scalar_t__ eState; size_t iPage; TYPE_2__** apPage; TYPE_1__* pPage; TYPE_4__* pBtree; } ;
struct TYPE_11__ {TYPE_3__* db; } ;
struct TYPE_10__ {int mutex; } ;
struct TYPE_9__ {int nCell; } ;
struct TYPE_8__ {scalar_t__ leaf; int nCell; } ;
typedef TYPE_5__ BtCursor ;


 scalar_t__ CURSOR_VALID ;
 scalar_t__ NEVER (int) ;
 int assert (int ) ;
 int cursorOwnsBtShared (TYPE_5__*) ;
 int sqlite3_mutex_held (int ) ;

i64 sqlite3BtreeRowCountEst(BtCursor *pCur){
  i64 n;
  u8 i;

  assert( cursorOwnsBtShared(pCur) );
  assert( sqlite3_mutex_held(pCur->pBtree->db->mutex) );




  if( NEVER(pCur->eState!=CURSOR_VALID) ) return -1;
  if( NEVER(pCur->pPage->leaf==0) ) return -1;

  n = pCur->pPage->nCell;
  for(i=0; i<pCur->iPage; i++){
    n *= pCur->apPage[i]->nCell;
  }
  return n;
}
