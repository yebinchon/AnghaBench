
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ nSize; } ;
struct TYPE_10__ {int curFlags; scalar_t__ eState; scalar_t__ ix; TYPE_2__* pPage; TYPE_1__ info; } ;
struct TYPE_9__ {scalar_t__ nCell; scalar_t__ leaf; } ;
typedef TYPE_2__ MemPage ;
typedef TYPE_3__ BtCursor ;


 int BTCF_ValidNKey ;
 int BTCF_ValidOvfl ;
 scalar_t__ CURSOR_VALID ;
 int SQLITE_OK ;
 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 int btreeNext (TYPE_3__*) ;
 int cursorOwnsBtShared (TYPE_3__*) ;
 int moveToLeftmost (TYPE_3__*) ;

int sqlite3BtreeNext(BtCursor *pCur, int flags){
  MemPage *pPage;
  UNUSED_PARAMETER( flags );
  assert( cursorOwnsBtShared(pCur) );
  assert( flags==0 || flags==1 );
  pCur->info.nSize = 0;
  pCur->curFlags &= ~(BTCF_ValidNKey|BTCF_ValidOvfl);
  if( pCur->eState!=CURSOR_VALID ) return btreeNext(pCur);
  pPage = pCur->pPage;
  if( (++pCur->ix)>=pPage->nCell ){
    pCur->ix--;
    return btreeNext(pCur);
  }
  if( pPage->leaf ){
    return SQLITE_OK;
  }else{
    return moveToLeftmost(pCur);
  }
}
