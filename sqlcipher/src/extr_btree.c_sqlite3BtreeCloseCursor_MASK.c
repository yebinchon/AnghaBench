#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * pBtree; int /*<<< orphan*/  pKey; int /*<<< orphan*/  aOverflow; struct TYPE_8__* pNext; TYPE_1__* pBt; } ;
struct TYPE_7__ {TYPE_2__* pCursor; } ;
typedef  int /*<<< orphan*/  Btree ;
typedef  TYPE_1__ BtShared ;
typedef  TYPE_2__ BtCursor ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

int FUNC7(BtCursor *pCur){
  Btree *pBtree = pCur->pBtree;
  if( pBtree ){
    BtShared *pBt = pCur->pBt;
    FUNC3(pBtree);
    FUNC1( pBt->pCursor!=0 );
    if( pBt->pCursor==pCur ){
      pBt->pCursor = pCur->pNext;
    }else{
      BtCursor *pPrev = pBt->pCursor;
      do{
        if( pPrev->pNext==pCur ){
          pPrev->pNext = pCur->pNext;
          break;
        }
        pPrev = pPrev->pNext;
      }while( FUNC0(pPrev) );
    }
    FUNC2(pCur);
    FUNC6(pBt);
    FUNC5(pCur->aOverflow);
    FUNC5(pCur->pKey);
    FUNC4(pBtree);
    pCur->pBtree = 0;
  }
  return SQLITE_OK;
}