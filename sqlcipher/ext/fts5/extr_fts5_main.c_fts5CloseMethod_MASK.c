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
struct TYPE_9__ {scalar_t__ pVtab; } ;
typedef  TYPE_2__ sqlite3_vtab_cursor ;
struct TYPE_11__ {struct TYPE_11__* pNext; } ;
struct TYPE_10__ {TYPE_1__* pGlobal; } ;
struct TYPE_8__ {TYPE_4__* pCsr; } ;
typedef  TYPE_3__ Fts5FullTable ;
typedef  TYPE_4__ Fts5Cursor ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC2(sqlite3_vtab_cursor *pCursor){
  if( pCursor ){
    Fts5FullTable *pTab = (Fts5FullTable*)(pCursor->pVtab);
    Fts5Cursor *pCsr = (Fts5Cursor*)pCursor;
    Fts5Cursor **pp;

    FUNC0(pCsr);
    /* Remove the cursor from the Fts5Global.pCsr list */
    for(pp=&pTab->pGlobal->pCsr; (*pp)!=pCsr; pp=&(*pp)->pNext);
    *pp = pCsr->pNext;

    FUNC1(pCsr);
  }
  return SQLITE_OK;
}