#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct ExprList_item {int /*<<< orphan*/  sortOrder; int /*<<< orphan*/  pExpr; } ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_12__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_11__ {int /*<<< orphan*/ * aSortOrder; int /*<<< orphan*/ * aColl; } ;
struct TYPE_10__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ Parse ;
typedef  TYPE_2__ KeyInfo ;
typedef  TYPE_3__ ExprList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

KeyInfo *FUNC4(
  Parse *pParse,       /* Parsing context */
  ExprList *pList,     /* Form the KeyInfo object from this ExprList */
  int iStart,          /* Begin with this column of pList */
  int nExtra           /* Add this many extra columns to the end */
){
  int nExpr;
  KeyInfo *pInfo;
  struct ExprList_item *pItem;
  sqlite3 *db = pParse->db;
  int i;

  nExpr = pList->nExpr;
  pInfo = FUNC2(db, nExpr-iStart, nExtra+1);
  if( pInfo ){
    FUNC0( FUNC3(pInfo) );
    for(i=iStart, pItem=pList->a+iStart; i<nExpr; i++, pItem++){
      pInfo->aColl[i-iStart] = FUNC1(pParse, pItem->pExpr);
      pInfo->aSortOrder[i-iStart] = pItem->sortOrder;
    }
  }
  return pInfo;
}