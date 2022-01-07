
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {scalar_t__ eState; scalar_t__ iPage; scalar_t__ ix; TYPE_1__* pPage; } ;
struct TYPE_6__ {scalar_t__ nCell; } ;
typedef TYPE_2__ BtCursor ;


 scalar_t__ CURSOR_VALID ;
 int accessPayload (TYPE_2__*,int ,int ,unsigned char*,int ) ;
 int assert (int) ;
 int cursorHoldsMutex (TYPE_2__*) ;

int sqlite3BtreePayload(BtCursor *pCur, u32 offset, u32 amt, void *pBuf){
  assert( cursorHoldsMutex(pCur) );
  assert( pCur->eState==CURSOR_VALID );
  assert( pCur->iPage>=0 && pCur->pPage );
  assert( pCur->ix<pCur->pPage->nCell );
  return accessPayload(pCur, offset, amt, (unsigned char*)pBuf, 0);
}
