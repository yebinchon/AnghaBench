#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nColumn; struct TYPE_8__* azContentColumn; struct TYPE_8__* azColumn; TYPE_3__* pTokenizer; int /*<<< orphan*/ ** pFulltextStatements; } ;
typedef  TYPE_2__ fulltext_vtab ;
struct TYPE_9__ {TYPE_1__* pModule; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* xDestroy ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int MAX_STMT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC5(fulltext_vtab *v){
  int iStmt, i;

  FUNC0(("FTS1 Destroy %p\n", v));
  for( iStmt=0; iStmt<MAX_STMT; iStmt++ ){
    if( v->pFulltextStatements[iStmt]!=NULL ){
      FUNC2(v->pFulltextStatements[iStmt]);
      v->pFulltextStatements[iStmt] = NULL;
    }
  }

  if( v->pTokenizer!=NULL ){
    v->pTokenizer->pModule->xDestroy(v->pTokenizer);
    v->pTokenizer = NULL;
  }
  
  FUNC1(v->azColumn);
  for(i = 0; i < v->nColumn; ++i) {
    FUNC3(v->azContentColumn[i]);
  }
  FUNC1(v->azContentColumn);
  FUNC1(v);
}