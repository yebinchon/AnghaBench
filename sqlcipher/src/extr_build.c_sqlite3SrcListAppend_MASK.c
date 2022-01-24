#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct SrcList_item {int iCursor; void* zDatabase; void* zName; } ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_15__ {scalar_t__ z; } ;
typedef  TYPE_1__ Token ;
struct TYPE_17__ {int /*<<< orphan*/ * db; } ;
struct TYPE_16__ {int nAlloc; int nSrc; struct SrcList_item* a; } ;
typedef  TYPE_2__ SrcList ;
typedef  TYPE_3__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct SrcList_item*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_3__*,TYPE_2__*,int,int) ; 

SrcList *FUNC6(
  Parse *pParse,      /* Parsing context, in which errors are reported */
  SrcList *pList,     /* Append to this SrcList. NULL creates a new SrcList */
  Token *pTable,      /* Table to append */
  Token *pDatabase    /* Database of the table */
){
  struct SrcList_item *pItem;
  sqlite3 *db;
  FUNC0( pDatabase==0 || pTable!=0 );  /* Cannot have C without B */
  FUNC0( pParse!=0 );
  FUNC0( pParse->db!=0 );
  db = pParse->db;
  if( pList==0 ){
    pList = FUNC2(pParse->db, sizeof(SrcList) );
    if( pList==0 ) return 0;
    pList->nAlloc = 1;
    pList->nSrc = 1;
    FUNC1(&pList->a[0], 0, sizeof(pList->a[0]));
    pList->a[0].iCursor = -1;
  }else{
    SrcList *pNew = FUNC5(pParse, pList, 1, pList->nSrc);
    if( pNew==0 ){
      FUNC4(db, pList);
      return 0;
    }else{
      pList = pNew;
    }
  }
  pItem = &pList->a[pList->nSrc-1];
  if( pDatabase && pDatabase->z==0 ){
    pDatabase = 0;
  }
  if( pDatabase ){
    pItem->zName = FUNC3(db, pDatabase);
    pItem->zDatabase = FUNC3(db, pTable);
  }else{
    pItem->zName = FUNC3(db, pTable);
    pItem->zDatabase = 0;
  }
  return pList;
}