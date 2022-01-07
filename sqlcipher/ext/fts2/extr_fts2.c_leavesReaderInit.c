
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
typedef int sqlite3_stmt ;
typedef int fulltext_vtab ;
struct TYPE_7__ {int nData; int pData; } ;
struct TYPE_6__ {int idx; int eof; int leafReader; int * pStmt; TYPE_3__ rootData; } ;
typedef TYPE_1__ LeavesReader ;


 int CLEAR (TYPE_1__*) ;
 int SQLITE_DONE ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int dataBufferInit (TYPE_3__*,int ) ;
 int dataBufferReplace (TYPE_3__*,char const*,int) ;
 int leafReaderInit (int ,int ,int *) ;
 int sql_get_leaf_statement (int *,int,int **) ;
 int sqlite3_bind_int64 (int *,int,scalar_t__) ;
 int sqlite3_column_blob (int *,int ) ;
 int sqlite3_column_bytes (int *,int ) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int leavesReaderInit(fulltext_vtab *v,
                            int idx,
                            sqlite_int64 iStartBlockid,
                            sqlite_int64 iEndBlockid,
                            const char *pRootData, int nRootData,
                            LeavesReader *pReader){
  CLEAR(pReader);
  pReader->idx = idx;

  dataBufferInit(&pReader->rootData, 0);
  if( iStartBlockid==0 ){

    dataBufferReplace(&pReader->rootData, pRootData, nRootData);
    leafReaderInit(pReader->rootData.pData, pReader->rootData.nData,
                   &pReader->leafReader);
  }else{
    sqlite3_stmt *s;
    int rc = sql_get_leaf_statement(v, idx, &s);
    if( rc!=SQLITE_OK ) return rc;

    rc = sqlite3_bind_int64(s, 1, iStartBlockid);
    if( rc!=SQLITE_OK ) return rc;

    rc = sqlite3_bind_int64(s, 2, iEndBlockid);
    if( rc!=SQLITE_OK ) return rc;

    rc = sqlite3_step(s);
    if( rc==SQLITE_DONE ){
      pReader->eof = 1;
      return SQLITE_OK;
    }
    if( rc!=SQLITE_ROW ) return rc;

    pReader->pStmt = s;
    leafReaderInit(sqlite3_column_blob(pReader->pStmt, 0),
                   sqlite3_column_bytes(pReader->pStmt, 0),
                   &pReader->leafReader);
  }
  return SQLITE_OK;
}
