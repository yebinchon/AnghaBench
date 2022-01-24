#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * a; int /*<<< orphan*/ * b; } ;
typedef  TYPE_1__ Fts5PhraseIter ;
typedef  int /*<<< orphan*/  Fts5Cursor ;
typedef  int /*<<< orphan*/  Fts5Context ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int*) ; 

__attribute__((used)) static int FUNC2(
  Fts5Context *pCtx, 
  int iPhrase, 
  Fts5PhraseIter *pIter, 
  int *piCol, int *piOff
){
  Fts5Cursor *pCsr = (Fts5Cursor*)pCtx;
  int n;
  int rc = FUNC1(pCsr, iPhrase, &pIter->a, &n);
  if( rc==SQLITE_OK ){
    pIter->b = &pIter->a[n];
    *piCol = 0;
    *piOff = 0;
    FUNC0(pCtx, pIter, piCol, piOff);
  }
  return rc;
}