#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_6__ {TYPE_1__* pConfig; } ;
struct TYPE_5__ {int nCol; int /*<<< orphan*/  bColumnsize; } ;
typedef  TYPE_2__ Fts5Storage ;

/* Variables and functions */
 int FTS5_CORRUPT ; 
 int /*<<< orphan*/  FTS5_STMT_LOOKUP_DOCSIZE ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int*,int,int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(Fts5Storage *p, i64 iRowid, int *aCol){
  int nCol = p->pConfig->nCol;    /* Number of user columns in table */
  sqlite3_stmt *pLookup = 0;      /* Statement to query %_docsize */
  int rc;                         /* Return Code */

  FUNC0( p->pConfig->bColumnsize );
  rc = FUNC2(p, FTS5_STMT_LOOKUP_DOCSIZE, &pLookup, 0);
  if( rc==SQLITE_OK ){
    int bCorrupt = 1;
    FUNC3(pLookup, 1, iRowid);
    if( SQLITE_ROW==FUNC7(pLookup) ){
      const u8 *aBlob = FUNC4(pLookup, 0);
      int nBlob = FUNC5(pLookup, 0);
      if( 0==FUNC1(aCol, nCol, aBlob, nBlob) ){
        bCorrupt = 0;
      }
    }
    rc = FUNC6(pLookup);
    if( bCorrupt && rc==SQLITE_OK ){
      rc = FTS5_CORRUPT;
    }
  }

  return rc;
}