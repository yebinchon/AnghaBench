#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ nSize; } ;
struct TYPE_10__ {int curFlags; scalar_t__ eState; scalar_t__ ix; TYPE_2__* pPage; TYPE_1__ info; } ;
struct TYPE_9__ {scalar_t__ nCell; scalar_t__ leaf; } ;
typedef  TYPE_2__ MemPage ;
typedef  TYPE_3__ BtCursor ;

/* Variables and functions */
 int BTCF_ValidNKey ; 
 int BTCF_ValidOvfl ; 
 scalar_t__ CURSOR_VALID ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 

int FUNC5(BtCursor *pCur, int flags){
  MemPage *pPage;
  FUNC0( flags );  /* Used in COMDB2 but not native SQLite */
  FUNC1( FUNC3(pCur) );
  FUNC1( flags==0 || flags==1 );
  pCur->info.nSize = 0;
  pCur->curFlags &= ~(BTCF_ValidNKey|BTCF_ValidOvfl);
  if( pCur->eState!=CURSOR_VALID ) return FUNC2(pCur);
  pPage = pCur->pPage;
  if( (++pCur->ix)>=pPage->nCell ){
    pCur->ix--;
    return FUNC2(pCur);
  }
  if( pPage->leaf ){
    return SQLITE_OK;
  }else{
    return FUNC4(pCur);
  }
}