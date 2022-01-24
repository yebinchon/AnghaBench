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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_7__ {int nColumn; scalar_t__* abNotindexed; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SQL_SELECT_CONTENT_BY_ROWID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int,char const*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10( 
  int *pRC,               /* Result code */
  Fts3Table *p,           /* The FTS table to delete from */
  sqlite3_value *pRowid,  /* The docid to be deleted */
  u32 *aSz,               /* Sizes of deleted document written here */
  int *pbFound            /* OUT: Set to true if row really does exist */
){
  int rc;
  sqlite3_stmt *pSelect;

  FUNC0( *pbFound==0 );
  if( *pRC ) return;
  rc = FUNC3(p, SQL_SELECT_CONTENT_BY_ROWID, &pSelect, &pRowid);
  if( rc==SQLITE_OK ){
    if( SQLITE_ROW==FUNC9(pSelect) ){
      int i;
      int iLangid = FUNC4(p, pSelect);
      i64 iDocid = FUNC6(pSelect, 0);
      rc = FUNC2(p, 1, iLangid, iDocid);
      for(i=1; rc==SQLITE_OK && i<=p->nColumn; i++){
        int iCol = i-1;
        if( p->abNotindexed[iCol]==0 ){
          const char *zText = (const char *)FUNC7(pSelect, i);
          rc = FUNC1(p, iLangid, zText, -1, &aSz[iCol]);
          aSz[p->nColumn] += FUNC5(pSelect, i);
        }
      }
      if( rc!=SQLITE_OK ){
        FUNC8(pSelect);
        *pRC = rc;
        return;
      }
      *pbFound = 1;
    }
    rc = FUNC8(pSelect);
  }else{
    FUNC8(pSelect);
  }
  *pRC = rc;
}