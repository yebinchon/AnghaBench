#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_7__ {TYPE_1__* pSorter; } ;
struct TYPE_6__ {int nIdx; int* aIdx; int /*<<< orphan*/  const* aPoslist; int /*<<< orphan*/  pStmt; int /*<<< orphan*/  iRowid; } ;
typedef  TYPE_1__ Fts5Sorter ;
typedef  TYPE_2__ Fts5Cursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTS5CSR_EOF ; 
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(Fts5Cursor *pCsr){
  Fts5Sorter *pSorter = pCsr->pSorter;
  int rc;

  rc = FUNC6(pSorter->pStmt);
  if( rc==SQLITE_DONE ){
    rc = SQLITE_OK;
    FUNC0(pCsr, FTS5CSR_EOF);
  }else if( rc==SQLITE_ROW ){
    const u8 *a;
    const u8 *aBlob;
    int nBlob;
    int i;
    int iOff = 0;
    rc = SQLITE_OK;

    pSorter->iRowid = FUNC5(pSorter->pStmt, 0);
    nBlob = FUNC4(pSorter->pStmt, 1);
    aBlob = a = FUNC3(pSorter->pStmt, 1);

    /* nBlob==0 in detail=none mode. */
    if( nBlob>0 ){
      for(i=0; i<(pSorter->nIdx-1); i++){
        int iVal;
        a += FUNC2(a, iVal);
        iOff += iVal;
        pSorter->aIdx[i] = iOff;
      }
      pSorter->aIdx[i] = &aBlob[nBlob] - a;
      pSorter->aPoslist = a;
    }

    FUNC1(pCsr);
  }

  return rc;
}