#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int n; char* a; int nAlloc; } ;
typedef  TYPE_1__ Blob ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int*) ; 
 int FUNC2 (char*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 scalar_t__ FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(
  Blob *pNode,                    /* Current node image to append to */
  Blob *pPrev,                    /* Buffer containing previous term written */
  const char *zTerm,              /* New term to write */
  int nTerm,                      /* Size of zTerm in bytes */
  const char *aDoclist,           /* Doclist (or NULL) to write */
  int nDoclist                    /* Size of aDoclist in bytes */ 
){
  int rc = SQLITE_OK;             /* Return code */
  int bFirst = (pPrev->n==0);     /* True if this is the first term written */
  int nPrefix;                    /* Size of term prefix in bytes */
  int nSuffix;                    /* Size of term suffix in bytes */

  /* Node must have already been started. There must be a doclist for a
  ** leaf node, and there must not be a doclist for an internal node.  */
  FUNC0( pNode->n>0 );
  FUNC0( (pNode->a[0]=='\0')==(aDoclist!=0) );

  FUNC1(pPrev, nTerm, &rc);
  if( rc!=SQLITE_OK ) return rc;

  nPrefix = FUNC2(pPrev->a, pPrev->n, zTerm, nTerm);
  nSuffix = nTerm - nPrefix;
  FUNC3(pPrev->a, zTerm, nTerm);
  pPrev->n = nTerm;

  if( bFirst==0 ){
    pNode->n += FUNC4(&pNode->a[pNode->n], nPrefix);
  }
  pNode->n += FUNC4(&pNode->a[pNode->n], nSuffix);
  FUNC3(&pNode->a[pNode->n], &zTerm[nPrefix], nSuffix);
  pNode->n += nSuffix;

  if( aDoclist ){
    pNode->n += FUNC4(&pNode->a[pNode->n], nDoclist);
    FUNC3(&pNode->a[pNode->n], aDoclist, nDoclist);
    pNode->n += nDoclist;
  }

  FUNC0( pNode->n<=pNode->nAlloc );

  return SQLITE_OK;
}