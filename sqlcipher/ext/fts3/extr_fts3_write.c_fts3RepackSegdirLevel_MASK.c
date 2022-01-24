#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3_int64 ;
struct TYPE_4__ {int bIgnoreSavepoint; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SQL_SELECT_INDEXES ; 
 int /*<<< orphan*/  SQL_SHIFT_SEGDIR_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int* FUNC6 (int*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(
  Fts3Table *p,                   /* FTS3 table handle */
  sqlite3_int64 iAbsLevel         /* Absolute level to repack */
){
  int rc;                         /* Return code */
  int *aIdx = 0;                  /* Array of remaining idx values */
  int nIdx = 0;                   /* Valid entries in aIdx[] */
  int nAlloc = 0;                 /* Allocated size of aIdx[] */
  int i;                          /* Iterator variable */
  sqlite3_stmt *pSelect = 0;      /* Select statement to read idx values */
  sqlite3_stmt *pUpdate = 0;      /* Update statement to modify idx values */

  rc = FUNC1(p, SQL_SELECT_INDEXES, &pSelect, 0);
  if( rc==SQLITE_OK ){
    int rc2;
    FUNC3(pSelect, 1, iAbsLevel);
    while( SQLITE_ROW==FUNC8(pSelect) ){
      if( nIdx>=nAlloc ){
        int *aNew;
        nAlloc += 16;
        aNew = FUNC6(aIdx, nAlloc*sizeof(int));
        if( !aNew ){
          rc = SQLITE_NOMEM;
          break;
        }
        aIdx = aNew;
      }
      aIdx[nIdx++] = FUNC4(pSelect, 0);
    }
    rc2 = FUNC7(pSelect);
    if( rc==SQLITE_OK ) rc = rc2;
  }

  if( rc==SQLITE_OK ){
    rc = FUNC1(p, SQL_SHIFT_SEGDIR_ENTRY, &pUpdate, 0);
  }
  if( rc==SQLITE_OK ){
    FUNC3(pUpdate, 2, iAbsLevel);
  }

  FUNC0( p->bIgnoreSavepoint==0 );
  p->bIgnoreSavepoint = 1;
  for(i=0; rc==SQLITE_OK && i<nIdx; i++){
    if( aIdx[i]!=i ){
      FUNC2(pUpdate, 3, aIdx[i]);
      FUNC2(pUpdate, 1, i);
      FUNC8(pUpdate);
      rc = FUNC7(pUpdate);
    }
  }
  p->bIgnoreSavepoint = 0;

  FUNC5(aIdx);
  return rc;
}