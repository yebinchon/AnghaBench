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
struct ExprList_item {int /*<<< orphan*/  zSpan; } ;
struct TYPE_8__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_10__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_9__ {TYPE_1__* db; } ;
typedef  TYPE_2__ Parse ;
typedef  TYPE_3__ ExprList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,char const*) ; 

void FUNC3(
  Parse *pParse,          /* Parsing context */
  ExprList *pList,        /* List to which to add the span. */
  const char *zStart,     /* Start of the span */
  const char *zEnd        /* End of the span */
){
  sqlite3 *db = pParse->db;
  FUNC0( pList!=0 || db->mallocFailed!=0 );
  if( pList ){
    struct ExprList_item *pItem = &pList->a[pList->nExpr-1];
    FUNC0( pList->nExpr>0 );
    FUNC1(db, pItem->zSpan);
    pItem->zSpan = FUNC2(db, zStart, zEnd);
  }
}