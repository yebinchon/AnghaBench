
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_6__ {int nIndex; } ;
typedef TYPE_1__ Fts3Table ;


 int FTS3_MERGE_COUNT ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQL_NEXT_SEGMENT_INDEX ;
 int assert (int) ;
 int fts3LogMerge (int,int ) ;
 int fts3SegmentMerge (TYPE_1__*,int,int,int) ;
 int fts3SqlStmt (TYPE_1__*,int ,int **,int ) ;
 int getAbsoluteLevel (TYPE_1__*,int,int,int) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int sqlite3_column_int (int *,int ) ;
 int sqlite3_reset (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static int fts3AllocateSegdirIdx(
  Fts3Table *p,
  int iLangid,
  int iIndex,
  int iLevel,
  int *piIdx
){
  int rc;
  sqlite3_stmt *pNextIdx;
  int iNext = 0;

  assert( iLangid>=0 );
  assert( p->nIndex>=1 );


  rc = fts3SqlStmt(p, SQL_NEXT_SEGMENT_INDEX, &pNextIdx, 0);
  if( rc==SQLITE_OK ){
    sqlite3_bind_int64(
        pNextIdx, 1, getAbsoluteLevel(p, iLangid, iIndex, iLevel)
    );
    if( SQLITE_ROW==sqlite3_step(pNextIdx) ){
      iNext = sqlite3_column_int(pNextIdx, 0);
    }
    rc = sqlite3_reset(pNextIdx);
  }

  if( rc==SQLITE_OK ){





    if( iNext>=FTS3_MERGE_COUNT ){
      fts3LogMerge(16, getAbsoluteLevel(p, iLangid, iIndex, iLevel));
      rc = fts3SegmentMerge(p, iLangid, iIndex, iLevel);
      *piIdx = 0;
    }else{
      *piIdx = iNext;
    }
  }

  return rc;
}
