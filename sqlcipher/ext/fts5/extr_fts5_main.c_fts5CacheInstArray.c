
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_int64 ;
struct TYPE_12__ {scalar_t__ pVtab; } ;
struct TYPE_15__ {int nInstAlloc; int* aInst; int nInstCount; TYPE_4__* aInstIter; int pExpr; TYPE_2__ base; } ;
struct TYPE_14__ {scalar_t__ bEof; scalar_t__ iPos; } ;
struct TYPE_13__ {TYPE_1__* pConfig; } ;
struct TYPE_11__ {int nCol; } ;
typedef TYPE_3__ Fts5Table ;
typedef TYPE_4__ Fts5PoslistReader ;
typedef TYPE_5__ Fts5Cursor ;


 int CsrFlagClear (TYPE_5__*,int ) ;
 int FTS5CSR_REQUIRE_INST ;
 int FTS5_CORRUPT ;
 int FTS5_POS2COLUMN (scalar_t__) ;
 int FTS5_POS2OFFSET (scalar_t__) ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int fts5CsrPoslist (TYPE_5__*,int,int const**,int*) ;
 int sqlite3Fts5ExprPhraseCount (int ) ;
 scalar_t__ sqlite3Fts5MallocZero (int*,int) ;
 int sqlite3Fts5PoslistReaderInit (int const*,int,TYPE_4__*) ;
 int sqlite3Fts5PoslistReaderNext (TYPE_4__*) ;
 scalar_t__ sqlite3_realloc64 (int*,int) ;

__attribute__((used)) static int fts5CacheInstArray(Fts5Cursor *pCsr){
  int rc = SQLITE_OK;
  Fts5PoslistReader *aIter;
  int nIter;
  int nCol = ((Fts5Table*)pCsr->base.pVtab)->pConfig->nCol;

  nIter = sqlite3Fts5ExprPhraseCount(pCsr->pExpr);
  if( pCsr->aInstIter==0 ){
    sqlite3_int64 nByte = sizeof(Fts5PoslistReader) * nIter;
    pCsr->aInstIter = (Fts5PoslistReader*)sqlite3Fts5MallocZero(&rc, nByte);
  }
  aIter = pCsr->aInstIter;

  if( aIter ){
    int nInst = 0;
    int i;


    for(i=0; i<nIter && rc==SQLITE_OK; i++){
      const u8 *a;
      int n;
      rc = fts5CsrPoslist(pCsr, i, &a, &n);
      if( rc==SQLITE_OK ){
        sqlite3Fts5PoslistReaderInit(a, n, &aIter[i]);
      }
    }

    if( rc==SQLITE_OK ){
      while( 1 ){
        int *aInst;
        int iBest = -1;
        for(i=0; i<nIter; i++){
          if( (aIter[i].bEof==0)
              && (iBest<0 || aIter[i].iPos<aIter[iBest].iPos)
            ){
            iBest = i;
          }
        }
        if( iBest<0 ) break;

        nInst++;
        if( nInst>=pCsr->nInstAlloc ){
          pCsr->nInstAlloc = pCsr->nInstAlloc ? pCsr->nInstAlloc*2 : 32;
          aInst = (int*)sqlite3_realloc64(
              pCsr->aInst, pCsr->nInstAlloc*sizeof(int)*3
              );
          if( aInst ){
            pCsr->aInst = aInst;
          }else{
            rc = SQLITE_NOMEM;
            break;
          }
        }

        aInst = &pCsr->aInst[3 * (nInst-1)];
        aInst[0] = iBest;
        aInst[1] = FTS5_POS2COLUMN(aIter[iBest].iPos);
        aInst[2] = FTS5_POS2OFFSET(aIter[iBest].iPos);
        if( aInst[1]<0 || aInst[1]>=nCol ){
          rc = FTS5_CORRUPT;
          break;
        }
        sqlite3Fts5PoslistReaderNext(&aIter[iBest]);
      }
    }

    pCsr->nInstCount = nInst;
    CsrFlagClear(pCsr, FTS5CSR_REQUIRE_INST);
  }
  return rc;
}
