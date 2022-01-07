
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_11__ {scalar_t__ nSize; scalar_t__ pPayload; int nLocal; } ;
struct TYPE_12__ {scalar_t__ iPage; scalar_t__ eState; scalar_t__ ix; TYPE_4__ info; TYPE_3__* pPage; TYPE_2__* pBtree; } ;
struct TYPE_10__ {scalar_t__ nCell; scalar_t__ aData; scalar_t__ aDataEnd; } ;
struct TYPE_9__ {TYPE_1__* db; } ;
struct TYPE_8__ {int mutex; } ;
typedef TYPE_5__ BtCursor ;


 int CORRUPT_DB ;
 scalar_t__ CURSOR_VALID ;
 int MAX (int ,int) ;
 int assert (int) ;
 int cursorOwnsBtShared (TYPE_5__*) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static const void *fetchPayload(
  BtCursor *pCur,
  u32 *pAmt
){
  int amt;
  assert( pCur!=0 && pCur->iPage>=0 && pCur->pPage);
  assert( pCur->eState==CURSOR_VALID );
  assert( sqlite3_mutex_held(pCur->pBtree->db->mutex) );
  assert( cursorOwnsBtShared(pCur) );
  assert( pCur->ix<pCur->pPage->nCell );
  assert( pCur->info.nSize>0 );
  assert( pCur->info.pPayload>pCur->pPage->aData || CORRUPT_DB );
  assert( pCur->info.pPayload<pCur->pPage->aDataEnd ||CORRUPT_DB);
  amt = pCur->info.nLocal;
  if( amt>(int)(pCur->pPage->aDataEnd - pCur->info.pPayload) ){


    assert( CORRUPT_DB );
    amt = MAX(0, (int)(pCur->pPage->aDataEnd - pCur->info.pPayload));
  }
  *pAmt = (u32)amt;
  return (void*)pCur->info.pPayload;
}
