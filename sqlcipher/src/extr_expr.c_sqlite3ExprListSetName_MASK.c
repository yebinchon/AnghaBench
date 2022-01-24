#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct ExprList_item {scalar_t__ zName; } ;
struct TYPE_10__ {int /*<<< orphan*/  n; int /*<<< orphan*/  z; } ;
typedef  TYPE_1__ Token ;
struct TYPE_13__ {scalar_t__ mallocFailed; } ;
struct TYPE_12__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_11__ {TYPE_9__* db; } ;
typedef  TYPE_2__ Parse ;
typedef  TYPE_3__ ExprList ;

/* Variables and functions */
 scalar_t__ IN_RENAME_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,void*,TYPE_1__*) ; 

void FUNC4(
  Parse *pParse,          /* Parsing context */
  ExprList *pList,        /* List to which to add the span. */
  Token *pName,           /* Name to be added */
  int dequote             /* True to cause the name to be dequoted */
){
  FUNC0( pList!=0 || pParse->db->mallocFailed!=0 );
  if( pList ){
    struct ExprList_item *pItem;
    FUNC0( pList->nExpr>0 );
    pItem = &pList->a[pList->nExpr-1];
    FUNC0( pItem->zName==0 );
    pItem->zName = FUNC1(pParse->db, pName->z, pName->n);
    if( dequote ) FUNC2(pItem->zName);
    if( IN_RENAME_OBJECT ){
      FUNC3(pParse, (void*)pItem->zName, pName);
    }
  }
}