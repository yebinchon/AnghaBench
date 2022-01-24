#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int nColumn; } ;
typedef  TYPE_1__ fulltext_vtab ;
struct TYPE_9__ {scalar_t__ nMatch; } ;
struct TYPE_8__ {scalar_t__ nTerms; TYPE_1__* pFts; } ;
struct TYPE_7__ {int iCursorType; TYPE_4__ snippet; TYPE_3__ q; int /*<<< orphan*/  pStmt; } ;
typedef  TYPE_2__ fulltext_cursor ;

/* Variables and functions */
 int QUERY_FULLTEXT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_4__*,int,char const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(fulltext_cursor *p){
  int nColumn;
  int iColumn, i;
  int iFirst, iLast;
  fulltext_vtab *pFts;

  if( p->snippet.nMatch ) return;
  if( p->q.nTerms==0 ) return;
  pFts = p->q.pFts;
  nColumn = pFts->nColumn;
  iColumn = p->iCursorType - QUERY_FULLTEXT;
  if( iColumn<0 || iColumn>=nColumn ){
    iFirst = 0;
    iLast = nColumn-1;
  }else{
    iFirst = iColumn;
    iLast = iColumn;
  }
  for(i=iFirst; i<=iLast; i++){
    const char *zDoc;
    int nDoc;
    zDoc = (const char*)FUNC2(p->pStmt, i+1);
    nDoc = FUNC1(p->pStmt, i+1);
    FUNC0(&p->q, &p->snippet, i, zDoc, nDoc);
  }
}