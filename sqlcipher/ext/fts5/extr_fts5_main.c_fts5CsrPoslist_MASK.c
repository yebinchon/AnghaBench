#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_14__ {scalar_t__ eDetail; int nCol; } ;
struct TYPE_10__ {scalar_t__ pVtab; } ;
struct TYPE_13__ {int /*<<< orphan*/  pExpr; TYPE_3__* pSorter; TYPE_1__ base; } ;
struct TYPE_12__ {int* aIdx; int /*<<< orphan*/ * aPoslist; int /*<<< orphan*/  iRowid; } ;
struct TYPE_11__ {TYPE_5__* pConfig; } ;
typedef  TYPE_2__ Fts5Table ;
typedef  TYPE_3__ Fts5Sorter ;
typedef  int /*<<< orphan*/  Fts5PoslistPopulator ;
typedef  TYPE_4__ Fts5Cursor ;
typedef  int /*<<< orphan*/  Fts5Context ;
typedef  TYPE_5__ Fts5Config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTS5CSR_REQUIRE_POSLIST ; 
 scalar_t__ FTS5_DETAIL_FULL ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char const**,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char const*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(
  Fts5Cursor *pCsr, 
  int iPhrase, 
  const u8 **pa,
  int *pn
){
  Fts5Config *pConfig = ((Fts5Table*)(pCsr->base.pVtab))->pConfig;
  int rc = SQLITE_OK;
  int bLive = (pCsr->pSorter==0);

  if( FUNC1(pCsr, FTS5CSR_REQUIRE_POSLIST) ){

    if( pConfig->eDetail!=FTS5_DETAIL_FULL ){
      Fts5PoslistPopulator *aPopulator;
      int i;
      aPopulator = FUNC4(pCsr->pExpr, bLive);
      if( aPopulator==0 ) rc = SQLITE_NOMEM;
      for(i=0; i<pConfig->nCol && rc==SQLITE_OK; i++){
        int n; const char *z;
        rc = FUNC2((Fts5Context*)pCsr, i, &z, &n);
        if( rc==SQLITE_OK ){
          rc = FUNC5(
              pConfig, pCsr->pExpr, aPopulator, i, z, n
          );
        }
      }
      FUNC7(aPopulator);

      if( pCsr->pSorter ){
        FUNC3(pCsr->pExpr, pCsr->pSorter->iRowid);
      }
    }
    FUNC0(pCsr, FTS5CSR_REQUIRE_POSLIST);
  }

  if( pCsr->pSorter && pConfig->eDetail==FTS5_DETAIL_FULL ){
    Fts5Sorter *pSorter = pCsr->pSorter;
    int i1 = (iPhrase==0 ? 0 : pSorter->aIdx[iPhrase-1]);
    *pn = pSorter->aIdx[iPhrase] - i1;
    *pa = &pSorter->aPoslist[i1];
  }else{
    *pn = FUNC6(pCsr->pExpr, iPhrase, pa);
  }

  return rc;
}