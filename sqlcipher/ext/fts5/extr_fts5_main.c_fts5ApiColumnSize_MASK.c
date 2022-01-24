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
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_14__ {scalar_t__ zContent; int nCol; scalar_t__* abUnindexed; scalar_t__ bColumnsize; } ;
struct TYPE_10__ {scalar_t__ pVtab; } ;
struct TYPE_13__ {int* aColumnSize; TYPE_1__ base; } ;
struct TYPE_11__ {TYPE_5__* pConfig; } ;
struct TYPE_12__ {int /*<<< orphan*/  pStorage; TYPE_2__ p; } ;
typedef  TYPE_3__ Fts5FullTable ;
typedef  TYPE_4__ Fts5Cursor ;
typedef  int /*<<< orphan*/  Fts5Context ;
typedef  TYPE_5__ Fts5Config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTS5CSR_REQUIRE_DOCSIZE ; 
 int /*<<< orphan*/  FTS5_TOKENIZE_AUX ; 
 int SQLITE_OK ; 
 int SQLITE_RANGE ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char const**,int*) ; 
 int /*<<< orphan*/  fts5ColumnSizeCb ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,char const*,int,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(Fts5Context *pCtx, int iCol, int *pnToken){
  Fts5Cursor *pCsr = (Fts5Cursor*)pCtx;
  Fts5FullTable *pTab = (Fts5FullTable*)(pCsr->base.pVtab);
  Fts5Config *pConfig = pTab->p.pConfig;
  int rc = SQLITE_OK;

  if( FUNC1(pCsr, FTS5CSR_REQUIRE_DOCSIZE) ){
    if( pConfig->bColumnsize ){
      i64 iRowid = FUNC3(pCsr);
      rc = FUNC4(pTab->pStorage, iRowid, pCsr->aColumnSize);
    }else if( pConfig->zContent==0 ){
      int i;
      for(i=0; i<pConfig->nCol; i++){
        if( pConfig->abUnindexed[i]==0 ){
          pCsr->aColumnSize[i] = -1;
        }
      }
    }else{
      int i;
      for(i=0; rc==SQLITE_OK && i<pConfig->nCol; i++){
        if( pConfig->abUnindexed[i]==0 ){
          const char *z; int n;
          void *p = (void*)(&pCsr->aColumnSize[i]);
          pCsr->aColumnSize[i] = 0;
          rc = FUNC2(pCtx, i, &z, &n);
          if( rc==SQLITE_OK ){
            rc = FUNC5(
                pConfig, FTS5_TOKENIZE_AUX, z, n, p, fts5ColumnSizeCb
            );
          }
        }
      }
    }
    FUNC0(pCsr, FTS5CSR_REQUIRE_DOCSIZE);
  }
  if( iCol<0 ){
    int i;
    *pnToken = 0;
    for(i=0; i<pConfig->nCol; i++){
      *pnToken += pCsr->aColumnSize[i];
    }
  }else if( iCol<pConfig->nCol ){
    *pnToken = pCsr->aColumnSize[iCol];
  }else{
    *pnToken = 0;
    rc = SQLITE_RANGE;
  }
  return rc;
}