#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_11__ {scalar_t__ nPendingData; int nColumn; } ;
typedef  TYPE_1__ fulltext_vtab ;
struct TYPE_12__ {scalar_t__ nData; int /*<<< orphan*/  pData; } ;
typedef  int /*<<< orphan*/  DocListType ;
typedef  TYPE_2__ DataBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  DL_DEFAULT ; 
 int /*<<< orphan*/  SEGDIR_SELECT_ALL_STMT ; 
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC4 (TYPE_1__*,char const*,int const,int /*<<< orphan*/  const,char const*,int,int,TYPE_2__*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(fulltext_vtab *v, int iColumn,
                      const char *pTerm, int nTerm, int isPrefix,
                      DocListType iType, DataBuffer *out){
  DataBuffer doclist;
  sqlite3_stmt *s;
  int rc = FUNC5(v, SEGDIR_SELECT_ALL_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  /* This code should never be called with buffered updates. */
  FUNC0( v->nPendingData<0 );

  FUNC2(&doclist, 0);

  /* Traverse the segments from oldest to newest so that newer doclist
  ** elements for given docids overwrite older elements.
  */
  while( (rc = FUNC9(s))==SQLITE_ROW ){
    const char *pData = FUNC6(s, 2);
    const int nData = FUNC7(s, 2);
    const sqlite_int64 iLeavesEnd = FUNC8(s, 1);
    rc = FUNC4(v, pData, nData, iLeavesEnd, pTerm, nTerm, isPrefix,
                     &doclist);
    if( rc!=SQLITE_OK ) goto err;
  }
  if( rc==SQLITE_DONE ){
    if( doclist.nData!=0 ){
      /* TODO(shess) The old term_select_all() code applied the column
      ** restrict as we merged segments, leading to smaller buffers.
      ** This is probably worthwhile to bring back, once the new storage
      ** system is checked in.
      */
      if( iColumn==v->nColumn) iColumn = -1;
      FUNC3(DL_DEFAULT, doclist.pData, doclist.nData,
                  iColumn, iType, out);
    }
    rc = SQLITE_OK;
  }

 err:
  FUNC1(&doclist);
  return rc;
}