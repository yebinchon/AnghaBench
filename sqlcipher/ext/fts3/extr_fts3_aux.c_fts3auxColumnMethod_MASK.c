#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_4__ {char* zTerm; int nTerm; } ;
struct TYPE_6__ {scalar_t__ isEof; size_t iCol; int /*<<< orphan*/  iLangid; TYPE_2__* aStat; TYPE_1__ csr; } ;
struct TYPE_5__ {int /*<<< orphan*/  nOcc; int /*<<< orphan*/  nDoc; } ;
typedef  TYPE_3__ Fts3auxCursor ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(
  sqlite3_vtab_cursor *pCursor,   /* Cursor to retrieve value from */
  sqlite3_context *pCtx,          /* Context for sqlite3_result_xxx() calls */
  int iCol                        /* Index of column to read value from */
){
  Fts3auxCursor *p = (Fts3auxCursor *)pCursor;

  FUNC0( p->isEof==0 );
  switch( iCol ){
    case 0: /* term */
      FUNC3(pCtx, p->csr.zTerm, p->csr.nTerm, SQLITE_TRANSIENT);
      break;

    case 1: /* col */
      if( p->iCol ){
        FUNC1(pCtx, p->iCol-1);
      }else{
        FUNC3(pCtx, "*", -1, SQLITE_STATIC);
      }
      break;

    case 2: /* documents */
      FUNC2(pCtx, p->aStat[p->iCol].nDoc);
      break;

    case 3: /* occurrences */
      FUNC2(pCtx, p->aStat[p->iCol].nOcc);
      break;

    default: /* languageid */
      FUNC0( iCol==4 );
      FUNC1(pCtx, p->iLangid);
      break;
  }

  return SQLITE_OK;
}