#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_7__ {TYPE_1__* pModule; } ;
struct TYPE_6__ {scalar_t__ nPendingData; scalar_t__ pSegments; TYPE_3__* pTokenizer; struct TYPE_6__* zLanguageid; struct TYPE_6__* zContentTbl; struct TYPE_6__* zWriteExprlist; struct TYPE_6__* zReadExprlist; struct TYPE_6__* zSegmentsTbl; int /*<<< orphan*/ * aStmt; int /*<<< orphan*/  pSeekStmt; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* xDestroy ) (TYPE_3__*) ;} ;
typedef  TYPE_2__ Fts3Table ;

/* Variables and functions */
 int SQLITE_OK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(sqlite3_vtab *pVtab){
  Fts3Table *p = (Fts3Table *)pVtab;
  int i;

  FUNC1( p->nPendingData==0 );
  FUNC1( p->pSegments==0 );

  /* Free any prepared statements held */
  FUNC2(p->pSeekStmt);
  for(i=0; i<FUNC0(p->aStmt); i++){
    FUNC2(p->aStmt[i]);
  }
  FUNC3(p->zSegmentsTbl);
  FUNC3(p->zReadExprlist);
  FUNC3(p->zWriteExprlist);
  FUNC3(p->zContentTbl);
  FUNC3(p->zLanguageid);

  /* Invoke the tokenizer destructor to free the tokenizer. */
  p->pTokenizer->pModule->xDestroy(p->pTokenizer);

  FUNC3(p);
  return SQLITE_OK;
}