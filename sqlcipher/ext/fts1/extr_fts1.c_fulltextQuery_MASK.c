#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fulltext_vtab ;
struct TYPE_8__ {int nTerms; TYPE_1__* pTerms; } ;
struct TYPE_7__ {int nPhrase; int /*<<< orphan*/  iColumn; scalar_t__ isNot; scalar_t__ isOr; } ;
typedef  TYPE_1__ QueryTerm ;
typedef  TYPE_2__ Query ;
typedef  int /*<<< orphan*/  DocList ;

/* Variables and functions */
 int /*<<< orphan*/  DL_DOCIDS ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,int,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(
  fulltext_vtab *v,      /* The full text index */
  int iColumn,           /* Match against this column by default */
  const char *zInput,    /* The query string */
  int nInput,            /* Number of bytes in zInput[] */
  DocList **pResult,     /* Write the result doclist here */
  Query *pQuery          /* Put parsed query string here */
){
  int i, iNext, rc;
  DocList *pLeft = NULL;
  DocList *pRight, *pNew, *pOr;
  int nNot = 0;
  QueryTerm *aTerm;

  rc = FUNC6(v, zInput, nInput, iColumn, pQuery);
  if( rc!=SQLITE_OK ) return rc;

  /* Merge AND terms. */
  aTerm = pQuery->pTerms;
  for(i = 0; i<pQuery->nTerms; i=iNext){
    if( aTerm[i].isNot ){
      /* Handle all NOT terms in a separate pass */
      nNot++;
      iNext = i + aTerm[i].nPhrase+1;
      continue;
    }
    iNext = i + aTerm[i].nPhrase + 1;
    rc = FUNC4(v, aTerm[i].iColumn, &aTerm[i], &pRight);
    if( rc ){
      FUNC7(pQuery);
      return rc;
    }
    while( iNext<pQuery->nTerms && aTerm[iNext].isOr ){
      rc = FUNC4(v, aTerm[iNext].iColumn, &aTerm[iNext], &pOr);
      iNext += aTerm[iNext].nPhrase + 1;
      if( rc ){
        FUNC7(pQuery);
        return rc;
      }
      pNew = FUNC3(DL_DOCIDS);
      FUNC5(pRight, pOr, pNew);
      FUNC1(pRight);
      FUNC1(pOr);
      pRight = pNew;
    }
    if( pLeft==0 ){
      pLeft = pRight;
    }else{
      pNew = FUNC3(DL_DOCIDS);
      FUNC0(pLeft, pRight, pNew);
      FUNC1(pRight);
      FUNC1(pLeft);
      pLeft = pNew;
    }
  }

  if( nNot && pLeft==0 ){
    /* We do not yet know how to handle a query of only NOT terms */
    return SQLITE_ERROR;
  }

  /* Do the EXCEPT terms */
  for(i=0; i<pQuery->nTerms;  i += aTerm[i].nPhrase + 1){
    if( !aTerm[i].isNot ) continue;
    rc = FUNC4(v, aTerm[i].iColumn, &aTerm[i], &pRight);
    if( rc ){
      FUNC7(pQuery);
      FUNC1(pLeft);
      return rc;
    }
    pNew = FUNC3(DL_DOCIDS);
    FUNC2(pLeft, pRight, pNew);
    FUNC1(pRight);
    FUNC1(pLeft);
    pLeft = pNew;
  }

  *pResult = pLeft;
  return rc;
}