
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3_int64 ;
struct TYPE_10__ {scalar_t__ nSegment; } ;
struct TYPE_9__ {scalar_t__ aIndex; } ;
typedef TYPE_1__ Fts3Table ;
typedef int Fts3SegReader ;
typedef TYPE_2__ Fts3MultiSegReader ;


 int FTS3_SEGCURSOR_PENDING ;
 int SQLITE_DONE ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int fts3SegReaderCursorAppend (TYPE_2__*,int *) ;
 int fts3SelectLeaf (TYPE_1__*,char const*,int,char const*,int,int *,int *) ;
 int sqlite3Fts3AllSegdirs (TYPE_1__*,int,int,int,int **) ;
 int sqlite3Fts3SegReaderNew (scalar_t__,int,int ,int ,int ,char const*,int,int **) ;
 int sqlite3Fts3SegReaderPending (TYPE_1__*,int,char const*,int,int,int **) ;
 char* sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 int sqlite3_column_int64 (int *,int) ;
 int sqlite3_reset (int *) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int fts3SegReaderCursor(
  Fts3Table *p,
  int iLangid,
  int iIndex,
  int iLevel,
  const char *zTerm,
  int nTerm,
  int isPrefix,
  int isScan,
  Fts3MultiSegReader *pCsr
){
  int rc = SQLITE_OK;
  sqlite3_stmt *pStmt = 0;
  int rc2;







  if( iLevel<0 && p->aIndex ){
    Fts3SegReader *pSeg = 0;
    rc = sqlite3Fts3SegReaderPending(p, iIndex, zTerm, nTerm, isPrefix||isScan, &pSeg);
    if( rc==SQLITE_OK && pSeg ){
      rc = fts3SegReaderCursorAppend(pCsr, pSeg);
    }
  }

  if( iLevel!=FTS3_SEGCURSOR_PENDING ){
    if( rc==SQLITE_OK ){
      rc = sqlite3Fts3AllSegdirs(p, iLangid, iIndex, iLevel, &pStmt);
    }

    while( rc==SQLITE_OK && SQLITE_ROW==(rc = sqlite3_step(pStmt)) ){
      Fts3SegReader *pSeg = 0;


      sqlite3_int64 iStartBlock = sqlite3_column_int64(pStmt, 1);
      sqlite3_int64 iLeavesEndBlock = sqlite3_column_int64(pStmt, 2);
      sqlite3_int64 iEndBlock = sqlite3_column_int64(pStmt, 3);
      int nRoot = sqlite3_column_bytes(pStmt, 4);
      char const *zRoot = sqlite3_column_blob(pStmt, 4);



      if( iStartBlock && zTerm && zRoot ){
        sqlite3_int64 *pi = (isPrefix ? &iLeavesEndBlock : 0);
        rc = fts3SelectLeaf(p, zTerm, nTerm, zRoot, nRoot, &iStartBlock, pi);
        if( rc!=SQLITE_OK ) goto finished;
        if( isPrefix==0 && isScan==0 ) iLeavesEndBlock = iStartBlock;
      }

      rc = sqlite3Fts3SegReaderNew(pCsr->nSegment+1,
          (isPrefix==0 && isScan==0),
          iStartBlock, iLeavesEndBlock,
          iEndBlock, zRoot, nRoot, &pSeg
      );
      if( rc!=SQLITE_OK ) goto finished;
      rc = fts3SegReaderCursorAppend(pCsr, pSeg);
    }
  }

 finished:
  rc2 = sqlite3_reset(pStmt);
  if( rc==SQLITE_DONE ) rc = rc2;

  return rc;
}
