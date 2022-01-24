#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  pFuncArg; void* zIndexedBy; } ;
struct TYPE_8__ {scalar_t__ isTabFunc; scalar_t__ isIndexedBy; } ;
struct SrcList_item {int /*<<< orphan*/  colUsed; int /*<<< orphan*/  pUsing; int /*<<< orphan*/  pOn; int /*<<< orphan*/  pSelect; TYPE_3__* pTab; TYPE_2__ u1; TYPE_1__ fg; int /*<<< orphan*/  pIBIndex; int /*<<< orphan*/  regReturn; int /*<<< orphan*/  addrFillSub; int /*<<< orphan*/  iCursor; void* zAlias; void* zName; void* zDatabase; int /*<<< orphan*/  pSchema; } ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_10__ {int /*<<< orphan*/  nTabRef; } ;
typedef  TYPE_3__ Table ;
struct TYPE_11__ {int nSrc; int nAlloc; struct SrcList_item* a; } ;
typedef  TYPE_4__ SrcList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

SrcList *FUNC7(sqlite3 *db, SrcList *p, int flags){
  SrcList *pNew;
  int i;
  int nByte;
  FUNC0( db!=0 );
  if( p==0 ) return 0;
  nByte = sizeof(*p) + (p->nSrc>0 ? sizeof(p->a[0]) * (p->nSrc-1) : 0);
  pNew = FUNC1(db, nByte );
  if( pNew==0 ) return 0;
  pNew->nSrc = pNew->nAlloc = p->nSrc;
  for(i=0; i<p->nSrc; i++){
    struct SrcList_item *pNewItem = &pNew->a[i];
    struct SrcList_item *pOldItem = &p->a[i];
    Table *pTab;
    pNewItem->pSchema = pOldItem->pSchema;
    pNewItem->zDatabase = FUNC2(db, pOldItem->zDatabase);
    pNewItem->zName = FUNC2(db, pOldItem->zName);
    pNewItem->zAlias = FUNC2(db, pOldItem->zAlias);
    pNewItem->fg = pOldItem->fg;
    pNewItem->iCursor = pOldItem->iCursor;
    pNewItem->addrFillSub = pOldItem->addrFillSub;
    pNewItem->regReturn = pOldItem->regReturn;
    if( pNewItem->fg.isIndexedBy ){
      pNewItem->u1.zIndexedBy = FUNC2(db, pOldItem->u1.zIndexedBy);
    }
    pNewItem->pIBIndex = pOldItem->pIBIndex;
    if( pNewItem->fg.isTabFunc ){
      pNewItem->u1.pFuncArg = 
          FUNC4(db, pOldItem->u1.pFuncArg, flags);
    }
    pTab = pNewItem->pTab = pOldItem->pTab;
    if( pTab ){
      pTab->nTabRef++;
    }
    pNewItem->pSelect = FUNC6(db, pOldItem->pSelect, flags);
    pNewItem->pOn = FUNC3(db, pOldItem->pOn, flags);
    pNewItem->pUsing = FUNC5(db, pOldItem->pUsing);
    pNewItem->colUsed = pOldItem->colUsed;
  }
  return pNew;
}