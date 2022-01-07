
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3_int64 ;
struct TYPE_8__ {int nSegment; } ;
struct TYPE_7__ {int nLeafEst; int iIdx; int iStart; TYPE_1__* aNodeWriter; int iAbsLevel; scalar_t__ iEnd; } ;
struct TYPE_6__ {scalar_t__ iBlock; } ;
typedef TYPE_2__ IncrmergeWriter ;
typedef int Fts3Table ;
typedef TYPE_3__ Fts3MultiSegReader ;


 int FTS_MAX_APPENDABLE_HEIGHT ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQL_MAX_LEAF_NODE_ESTIMATE ;
 int SQL_NEXT_SEGMENTS_ID ;
 int fts3SqlStmt (int *,int ,int **,int ) ;
 int fts3WriteSegment (int *,scalar_t__,int ,int ) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int sqlite3_column_int (int *,int ) ;
 int sqlite3_column_int64 (int *,int ) ;
 int sqlite3_reset (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static int fts3IncrmergeWriter(
  Fts3Table *p,
  sqlite3_int64 iAbsLevel,
  int iIdx,
  Fts3MultiSegReader *pCsr,
  IncrmergeWriter *pWriter
){
  int rc;
  int i;
  int nLeafEst = 0;
  sqlite3_stmt *pLeafEst = 0;
  sqlite3_stmt *pFirstBlock = 0;


  rc = fts3SqlStmt(p, SQL_MAX_LEAF_NODE_ESTIMATE, &pLeafEst, 0);
  if( rc==SQLITE_OK ){
    sqlite3_bind_int64(pLeafEst, 1, iAbsLevel);
    sqlite3_bind_int64(pLeafEst, 2, pCsr->nSegment);
    if( SQLITE_ROW==sqlite3_step(pLeafEst) ){
      nLeafEst = sqlite3_column_int(pLeafEst, 0);
    }
    rc = sqlite3_reset(pLeafEst);
  }
  if( rc!=SQLITE_OK ) return rc;


  rc = fts3SqlStmt(p, SQL_NEXT_SEGMENTS_ID, &pFirstBlock, 0);
  if( rc==SQLITE_OK ){
    if( SQLITE_ROW==sqlite3_step(pFirstBlock) ){
      pWriter->iStart = sqlite3_column_int64(pFirstBlock, 0);
      pWriter->iEnd = pWriter->iStart - 1;
      pWriter->iEnd += nLeafEst * FTS_MAX_APPENDABLE_HEIGHT;
    }
    rc = sqlite3_reset(pFirstBlock);
  }
  if( rc!=SQLITE_OK ) return rc;




  rc = fts3WriteSegment(p, pWriter->iEnd, 0, 0);
  if( rc!=SQLITE_OK ) return rc;

  pWriter->iAbsLevel = iAbsLevel;
  pWriter->nLeafEst = nLeafEst;
  pWriter->iIdx = iIdx;


  for(i=0; i<FTS_MAX_APPENDABLE_HEIGHT; i++){
    pWriter->aNodeWriter[i].iBlock = pWriter->iStart + i*pWriter->nLeafEst;
  }
  return SQLITE_OK;
}
