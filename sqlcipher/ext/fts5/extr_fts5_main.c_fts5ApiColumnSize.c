
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_14__ {scalar_t__ zContent; int nCol; scalar_t__* abUnindexed; scalar_t__ bColumnsize; } ;
struct TYPE_10__ {scalar_t__ pVtab; } ;
struct TYPE_13__ {int* aColumnSize; TYPE_1__ base; } ;
struct TYPE_11__ {TYPE_5__* pConfig; } ;
struct TYPE_12__ {int pStorage; TYPE_2__ p; } ;
typedef TYPE_3__ Fts5FullTable ;
typedef TYPE_4__ Fts5Cursor ;
typedef int Fts5Context ;
typedef TYPE_5__ Fts5Config ;


 int CsrFlagClear (TYPE_4__*,int ) ;
 scalar_t__ CsrFlagTest (TYPE_4__*,int ) ;
 int FTS5CSR_REQUIRE_DOCSIZE ;
 int FTS5_TOKENIZE_AUX ;
 int SQLITE_OK ;
 int SQLITE_RANGE ;
 int fts5ApiColumnText (int *,int,char const**,int*) ;
 int fts5ColumnSizeCb ;
 int fts5CursorRowid (TYPE_4__*) ;
 int sqlite3Fts5StorageDocsize (int ,int ,int*) ;
 int sqlite3Fts5Tokenize (TYPE_5__*,int ,char const*,int,void*,int ) ;

__attribute__((used)) static int fts5ApiColumnSize(Fts5Context *pCtx, int iCol, int *pnToken){
  Fts5Cursor *pCsr = (Fts5Cursor*)pCtx;
  Fts5FullTable *pTab = (Fts5FullTable*)(pCsr->base.pVtab);
  Fts5Config *pConfig = pTab->p.pConfig;
  int rc = SQLITE_OK;

  if( CsrFlagTest(pCsr, FTS5CSR_REQUIRE_DOCSIZE) ){
    if( pConfig->bColumnsize ){
      i64 iRowid = fts5CursorRowid(pCsr);
      rc = sqlite3Fts5StorageDocsize(pTab->pStorage, iRowid, pCsr->aColumnSize);
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
          rc = fts5ApiColumnText(pCtx, i, &z, &n);
          if( rc==SQLITE_OK ){
            rc = sqlite3Fts5Tokenize(
                pConfig, FTS5_TOKENIZE_AUX, z, n, p, fts5ColumnSizeCb
            );
          }
        }
      }
    }
    CsrFlagClear(pCsr, FTS5CSR_REQUIRE_DOCSIZE);
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
