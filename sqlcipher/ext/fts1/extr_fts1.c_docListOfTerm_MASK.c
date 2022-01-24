#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fulltext_vtab ;
struct TYPE_3__ {int nPhrase; int /*<<< orphan*/  nTerm; int /*<<< orphan*/  pTerm; } ;
typedef  TYPE_1__ QueryTerm ;
typedef  int /*<<< orphan*/  DocList ;

/* Variables and functions */
 int /*<<< orphan*/  DL_DOCIDS ; 
 int /*<<< orphan*/  DL_POSITIONS ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(
  fulltext_vtab *v,     /* The full text index */
  int iColumn,          /* column to restrict to.  No restrition if >=nColumn */
  QueryTerm *pQTerm,    /* Term we are looking for, or 1st term of a phrase */
  DocList **ppResult    /* Write the result here */
){
  DocList *pLeft, *pRight, *pNew;
  int i, rc;

  pLeft = FUNC1(DL_POSITIONS);
  rc = FUNC3(v, iColumn, pQTerm->pTerm, pQTerm->nTerm, pLeft);
  if( rc ){
    FUNC0(pLeft);
    return rc;
  }
  for(i=1; i<=pQTerm->nPhrase; i++){
    pRight = FUNC1(DL_POSITIONS);
    rc = FUNC3(v, iColumn, pQTerm[i].pTerm, pQTerm[i].nTerm, pRight);
    if( rc ){
      FUNC0(pLeft);
      return rc;
    }
    pNew = FUNC1(i<pQTerm->nPhrase ? DL_POSITIONS : DL_DOCIDS);
    FUNC2(pLeft, pRight, pNew);
    FUNC0(pLeft);
    FUNC0(pRight);
    pLeft = pNew;
  }
  *ppResult = pLeft;
  return SQLITE_OK;
}