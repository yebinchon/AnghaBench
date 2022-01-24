#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_11__ {scalar_t__ nSize; scalar_t__ pPayload; int nLocal; } ;
struct TYPE_12__ {scalar_t__ iPage; scalar_t__ eState; scalar_t__ ix; TYPE_4__ info; TYPE_3__* pPage; TYPE_2__* pBtree; } ;
struct TYPE_10__ {scalar_t__ nCell; scalar_t__ aData; scalar_t__ aDataEnd; } ;
struct TYPE_9__ {TYPE_1__* db; } ;
struct TYPE_8__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_5__ BtCursor ;

/* Variables and functions */
 int CORRUPT_DB ; 
 scalar_t__ CURSOR_VALID ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_5__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const void *FUNC4(
  BtCursor *pCur,      /* Cursor pointing to entry to read from */
  u32 *pAmt            /* Write the number of available bytes here */
){
  int amt;
  FUNC1( pCur!=0 && pCur->iPage>=0 && pCur->pPage);
  FUNC1( pCur->eState==CURSOR_VALID );
  FUNC1( FUNC3(pCur->pBtree->db->mutex) );
  FUNC1( FUNC2(pCur) );
  FUNC1( pCur->ix<pCur->pPage->nCell );
  FUNC1( pCur->info.nSize>0 );
  FUNC1( pCur->info.pPayload>pCur->pPage->aData || CORRUPT_DB );
  FUNC1( pCur->info.pPayload<pCur->pPage->aDataEnd ||CORRUPT_DB);
  amt = pCur->info.nLocal;
  if( amt>(int)(pCur->pPage->aDataEnd - pCur->info.pPayload) ){
    /* There is too little space on the page for the expected amount
    ** of local content. Database must be corrupt. */
    FUNC1( CORRUPT_DB );
    amt = FUNC0(0, (int)(pCur->pPage->aDataEnd - pCur->info.pPayload));
  }
  *pAmt = (u32)amt;
  return (void*)pCur->info.pPayload;
}