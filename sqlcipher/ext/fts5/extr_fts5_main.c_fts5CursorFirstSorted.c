
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_16__ {int zName; int zDb; } ;
struct TYPE_15__ {char* zRank; char* zRankArgs; TYPE_2__* pSorter; int pExpr; } ;
struct TYPE_12__ {TYPE_5__* pConfig; } ;
struct TYPE_14__ {TYPE_4__* pSortCsr; TYPE_1__ p; } ;
struct TYPE_13__ {int nIdx; int pStmt; } ;
typedef TYPE_2__ Fts5Sorter ;
typedef TYPE_3__ Fts5FullTable ;
typedef TYPE_4__ Fts5Cursor ;
typedef TYPE_5__ Fts5Config ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts5PrepareStatement (int *,TYPE_5__*,char*,int ,int ,char const*,int ,char*,char const*,char*) ;
 int fts5SorterNext (TYPE_4__*) ;
 int memset (TYPE_2__*,int ,size_t) ;
 int sqlite3Fts5ExprPhraseCount (int ) ;
 int sqlite3_finalize (int ) ;
 int sqlite3_free (TYPE_2__*) ;
 scalar_t__ sqlite3_malloc64 (int) ;

__attribute__((used)) static int fts5CursorFirstSorted(
  Fts5FullTable *pTab,
  Fts5Cursor *pCsr,
  int bDesc
){
  Fts5Config *pConfig = pTab->p.pConfig;
  Fts5Sorter *pSorter;
  int nPhrase;
  sqlite3_int64 nByte;
  int rc;
  const char *zRank = pCsr->zRank;
  const char *zRankArgs = pCsr->zRankArgs;

  nPhrase = sqlite3Fts5ExprPhraseCount(pCsr->pExpr);
  nByte = sizeof(Fts5Sorter) + sizeof(int) * (nPhrase-1);
  pSorter = (Fts5Sorter*)sqlite3_malloc64(nByte);
  if( pSorter==0 ) return SQLITE_NOMEM;
  memset(pSorter, 0, (size_t)nByte);
  pSorter->nIdx = nPhrase;
  rc = fts5PrepareStatement(&pSorter->pStmt, pConfig,
      "SELECT rowid, rank FROM %Q.%Q ORDER BY %s(%s%s%s) %s",
      pConfig->zDb, pConfig->zName, zRank, pConfig->zName,
      (zRankArgs ? ", " : ""),
      (zRankArgs ? zRankArgs : ""),
      bDesc ? "DESC" : "ASC"
  );

  pCsr->pSorter = pSorter;
  if( rc==SQLITE_OK ){
    assert( pTab->pSortCsr==0 );
    pTab->pSortCsr = pCsr;
    rc = fts5SorterNext(pCsr);
    pTab->pSortCsr = 0;
  }

  if( rc!=SQLITE_OK ){
    sqlite3_finalize(pSorter->pStmt);
    sqlite3_free(pSorter);
    pCsr->pSorter = 0;
  }

  return rc;
}
