#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  fulltext_vtab ;
struct TYPE_9__ {int /*<<< orphan*/  nData; } ;
typedef  int /*<<< orphan*/  DocListMerge ;
typedef  TYPE_1__ DocList ;

/* Variables and functions */
 int /*<<< orphan*/  DL_POSITIONS_OFFSETS ; 
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC8(fulltext_vtab *v, sqlite3_stmt **pSelect,
                       const char *zTerm,
                       DocList *pIn, int iOffset, DocList *out){
  int rc;
  DocListMerge merge;

  if( pIn!=NULL && !pIn->nData ){
    /* If [pIn] is already empty, there's no point in reading the
     * posting list to AND it in; return immediately. */
      return SQLITE_OK;
  }

  rc = FUNC7(v, zTerm, -1, pSelect);
  if( rc!=SQLITE_ROW && rc!=SQLITE_DONE ) return rc;

  FUNC3(&merge, pIn, iOffset, out);
  while( rc==SQLITE_ROW ){
    DocList block;
    FUNC1(&block, DL_POSITIONS_OFFSETS,
                FUNC4(*pSelect, 0),
                FUNC5(*pSelect, 0));
    FUNC2(&merge, &block);
    FUNC0(&block);

    rc = FUNC6(*pSelect);
    if( rc!=SQLITE_ROW && rc!=SQLITE_DONE ){
      return rc;
    }
  }
  
  return SQLITE_OK;
}