#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_6__ {int nIndex; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int FTS3_MERGE_COUNT ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SQL_NEXT_SEGMENT_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int,int,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(
  Fts3Table *p, 
  int iLangid,                    /* Language id */
  int iIndex,                     /* Index for p->aIndex */
  int iLevel, 
  int *piIdx
){
  int rc;                         /* Return Code */
  sqlite3_stmt *pNextIdx;         /* Query for next idx at level iLevel */
  int iNext = 0;                  /* Result of query pNextIdx */

  FUNC0( iLangid>=0 );
  FUNC0( p->nIndex>=1 );

  /* Set variable iNext to the next available segdir index at level iLevel. */
  rc = FUNC3(p, SQL_NEXT_SEGMENT_INDEX, &pNextIdx, 0);
  if( rc==SQLITE_OK ){
    FUNC5(
        pNextIdx, 1, FUNC4(p, iLangid, iIndex, iLevel)
    );
    if( SQLITE_ROW==FUNC8(pNextIdx) ){
      iNext = FUNC6(pNextIdx, 0);
    }
    rc = FUNC7(pNextIdx);
  }

  if( rc==SQLITE_OK ){
    /* If iNext is FTS3_MERGE_COUNT, indicating that level iLevel is already
    ** full, merge all segments in level iLevel into a single iLevel+1
    ** segment and allocate (newly freed) index 0 at level iLevel. Otherwise,
    ** if iNext is less than FTS3_MERGE_COUNT, allocate index iNext.
    */
    if( iNext>=FTS3_MERGE_COUNT ){
      FUNC1(16, FUNC4(p, iLangid, iIndex, iLevel));
      rc = FUNC2(p, iLangid, iIndex, iLevel);
      *piIdx = 0;
    }else{
      *piIdx = iNext;
    }
  }

  return rc;
}