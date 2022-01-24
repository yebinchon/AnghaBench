#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  fulltext_vtab ;
struct TYPE_13__ {scalar_t__ nData; } ;
typedef  TYPE_1__ DocList ;

/* Variables and functions */
 scalar_t__ CHUNK_MAX ; 
 int /*<<< orphan*/  DL_POSITIONS_OFFSETS ; 
 int SQLITE_DONE ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(fulltext_vtab *v, const char *zTerm, int nTerm,
                             sqlite_int64 iDocid, DocList *p){
  sqlite_int64 iFirst;
  sqlite_int64 iIndexRow;
  DocList doclist;

  int rc = FUNC5(v, zTerm, nTerm, iDocid, &iFirst);
  if( rc==SQLITE_DONE ){
    FUNC1(&doclist, DL_POSITIONS_OFFSETS, 0, 0);
    if( FUNC3(&doclist, iDocid, p) ){
      rc = FUNC6(v, zTerm, nTerm, iDocid, &doclist);
      FUNC0(&doclist);
      return rc;
    }
    return SQLITE_OK;
  }
  if( rc!=SQLITE_ROW ) return SQLITE_ERROR;

  /* This word is in the index; add this document ID to its blob. */

  rc = FUNC7(v, zTerm, nTerm, iFirst, &iIndexRow, &doclist);
  if( rc!=SQLITE_OK ) return rc;

  if( FUNC3(&doclist, iDocid, p) ){
    /* If the blob is too big, split it in half. */
    if( doclist.nData>CHUNK_MAX ){
      DocList half;
      if( FUNC2(&doclist, &half) ){
        rc = FUNC6(v, zTerm, nTerm, FUNC4(&half), &half);
        FUNC0(&half);
        if( rc!=SQLITE_OK ) goto err;
      }
    }
    rc = FUNC8(v, iIndexRow, &doclist);
  }

err:
  FUNC0(&doclist);
  return rc;
}