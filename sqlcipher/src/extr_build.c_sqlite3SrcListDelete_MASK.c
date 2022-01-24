#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  pFuncArg; int /*<<< orphan*/  zIndexedBy; } ;
struct TYPE_6__ {scalar_t__ isTabFunc; scalar_t__ isIndexedBy; } ;
struct SrcList_item {int /*<<< orphan*/  pUsing; int /*<<< orphan*/  pOn; int /*<<< orphan*/  pSelect; int /*<<< orphan*/  pTab; TYPE_2__ u1; TYPE_1__ fg; int /*<<< orphan*/  zAlias; int /*<<< orphan*/  zName; int /*<<< orphan*/  zDatabase; } ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_8__ {int nSrc; struct SrcList_item* a; } ;
typedef  TYPE_3__ SrcList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC7(sqlite3 *db, SrcList *pList){
  int i;
  struct SrcList_item *pItem;
  if( pList==0 ) return;
  for(pItem=pList->a, i=0; i<pList->nSrc; i++, pItem++){
    FUNC0(db, pItem->zDatabase);
    FUNC0(db, pItem->zName);
    FUNC0(db, pItem->zAlias);
    if( pItem->fg.isIndexedBy ) FUNC0(db, pItem->u1.zIndexedBy);
    if( pItem->fg.isTabFunc ) FUNC4(db, pItem->u1.pFuncArg);
    FUNC2(db, pItem->pTab);
    FUNC6(db, pItem->pSelect);
    FUNC3(db, pItem->pOn);
    FUNC5(db, pItem->pUsing);
  }
  FUNC1(db, pList);
}