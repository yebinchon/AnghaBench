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
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_8__ {scalar_t__ pVtab; } ;
struct TYPE_11__ {TYPE_1__ base; int /*<<< orphan*/  pStmt; int /*<<< orphan*/  iLangid; int /*<<< orphan*/  pExpr; int /*<<< orphan*/  iPrevId; } ;
struct TYPE_10__ {int nColumn; scalar_t__ pSegments; int /*<<< orphan*/  zLanguageid; } ;
typedef  TYPE_3__ Fts3Table ;
typedef  TYPE_4__ Fts3Cursor ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(
  sqlite3_vtab_cursor *pCursor,   /* Cursor to retrieve value from */
  sqlite3_context *pCtx,          /* Context for sqlite3_result_xxx() calls */
  int iCol                        /* Index of column to read value from */
){
  int rc = SQLITE_OK;             /* Return Code */
  Fts3Cursor *pCsr = (Fts3Cursor *) pCursor;
  Fts3Table *p = (Fts3Table *)pCursor->pVtab;

  /* The column value supplied by SQLite must be in range. */
  FUNC0( iCol>=0 && iCol<=p->nColumn+2 );

  switch( iCol-p->nColumn ){
    case 0:
      /* The special 'table-name' column */
      FUNC6(pCtx, pCsr, "fts3cursor", 0);
      break;

    case 1:
      /* The docid column */
      FUNC5(pCtx, pCsr->iPrevId);
      break;

    case 2:
      if( pCsr->pExpr ){
        FUNC5(pCtx, pCsr->iLangid);
        break;
      }else if( p->zLanguageid==0 ){
        FUNC4(pCtx, 0);
        break;
      }else{
        iCol = p->nColumn;
        /* fall-through */
      }

    default:
      /* A user column. Or, if this is a full-table scan, possibly the
      ** language-id column. Seek the cursor. */
      rc = FUNC1(0, pCsr);
      if( rc==SQLITE_OK && FUNC3(pCsr->pStmt)-1>iCol ){
        FUNC7(pCtx, FUNC2(pCsr->pStmt, iCol+1));
      }
      break;
  }

  FUNC0( ((Fts3Table *)pCsr->base.pVtab)->pSegments==0 );
  return rc;
}