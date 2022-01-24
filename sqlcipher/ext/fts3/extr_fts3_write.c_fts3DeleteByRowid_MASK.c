#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_7__ {int nColumn; scalar_t__ zContentTbl; scalar_t__ bHasDocsize; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQL_DELETE_CONTENT ; 
 int /*<<< orphan*/  SQL_DELETE_DOCSIZE ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(
  Fts3Table *p, 
  sqlite3_value *pRowid, 
  int *pnChng,                    /* IN/OUT: Decrement if row is deleted */
  u32 *aSzDel
){
  int rc = SQLITE_OK;             /* Return code */
  int bFound = 0;                 /* True if *pRowid really is in the table */

  FUNC1(&rc, p, pRowid, aSzDel, &bFound);
  if( bFound && rc==SQLITE_OK ){
    int isEmpty = 0;              /* Deleting *pRowid leaves the table empty */
    rc = FUNC2(p, pRowid, &isEmpty);
    if( rc==SQLITE_OK ){
      if( isEmpty ){
        /* Deleting this row means the whole table is empty. In this case
        ** delete the contents of all three tables and throw away any
        ** data in the pendingTerms hash table.  */
        rc = FUNC0(p, 1);
        *pnChng = 0;
        FUNC4(aSzDel, 0, sizeof(u32) * (p->nColumn+1) * 2);
      }else{
        *pnChng = *pnChng - 1;
        if( p->zContentTbl==0 ){
          FUNC3(&rc, p, SQL_DELETE_CONTENT, &pRowid);
        }
        if( p->bHasDocsize ){
          FUNC3(&rc, p, SQL_DELETE_DOCSIZE, &pRowid);
        }
      }
    }
  }

  return rc;
}