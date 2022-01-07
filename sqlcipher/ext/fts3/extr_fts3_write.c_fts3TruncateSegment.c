
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef scalar_t__ sqlite3_int64 ;
struct TYPE_3__ {char* a; int n; int member_2; int member_1; int member_0; } ;
typedef int Fts3Table ;
typedef TYPE_1__ Blob ;


 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQLITE_STATIC ;
 int SQL_CHOMP_SEGDIR ;
 int SQL_DELETE_SEGMENTS_RANGE ;
 int SQL_SELECT_SEGDIR ;
 int fts3SqlStmt (int *,int ,int **,int ) ;
 int fts3TruncateNode (char const*,int,TYPE_1__*,char const*,int,scalar_t__*) ;
 int fts3WriteSegment (int *,scalar_t__,char*,int ) ;
 int sqlite3Fts3ReadBlock (int *,scalar_t__,char**,int*,int ) ;
 int sqlite3_bind_blob (int *,int,char*,int ,int ) ;
 int sqlite3_bind_int (int *,int,int) ;
 int sqlite3_bind_int64 (int *,int,scalar_t__) ;
 int sqlite3_bind_null (int *,int) ;
 char* sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 scalar_t__ sqlite3_column_int64 (int *,int) ;
 int sqlite3_free (char*) ;
 int sqlite3_reset (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static int fts3TruncateSegment(
  Fts3Table *p,
  sqlite3_int64 iAbsLevel,
  int iIdx,
  const char *zTerm,
  int nTerm
){
  int rc = SQLITE_OK;
  Blob root = {0,0,0};
  Blob block = {0,0,0};
  sqlite3_int64 iBlock = 0;
  sqlite3_int64 iNewStart = 0;
  sqlite3_int64 iOldStart = 0;
  sqlite3_stmt *pFetch = 0;

  rc = fts3SqlStmt(p, SQL_SELECT_SEGDIR, &pFetch, 0);
  if( rc==SQLITE_OK ){
    int rc2;
    sqlite3_bind_int64(pFetch, 1, iAbsLevel);
    sqlite3_bind_int(pFetch, 2, iIdx);
    if( SQLITE_ROW==sqlite3_step(pFetch) ){
      const char *aRoot = sqlite3_column_blob(pFetch, 4);
      int nRoot = sqlite3_column_bytes(pFetch, 4);
      iOldStart = sqlite3_column_int64(pFetch, 1);
      rc = fts3TruncateNode(aRoot, nRoot, &root, zTerm, nTerm, &iBlock);
    }
    rc2 = sqlite3_reset(pFetch);
    if( rc==SQLITE_OK ) rc = rc2;
  }

  while( rc==SQLITE_OK && iBlock ){
    char *aBlock = 0;
    int nBlock = 0;
    iNewStart = iBlock;

    rc = sqlite3Fts3ReadBlock(p, iBlock, &aBlock, &nBlock, 0);
    if( rc==SQLITE_OK ){
      rc = fts3TruncateNode(aBlock, nBlock, &block, zTerm, nTerm, &iBlock);
    }
    if( rc==SQLITE_OK ){
      rc = fts3WriteSegment(p, iNewStart, block.a, block.n);
    }
    sqlite3_free(aBlock);
  }


  if( rc==SQLITE_OK && iNewStart ){
    sqlite3_stmt *pDel = 0;
    rc = fts3SqlStmt(p, SQL_DELETE_SEGMENTS_RANGE, &pDel, 0);
    if( rc==SQLITE_OK ){
      sqlite3_bind_int64(pDel, 1, iOldStart);
      sqlite3_bind_int64(pDel, 2, iNewStart-1);
      sqlite3_step(pDel);
      rc = sqlite3_reset(pDel);
    }
  }

  if( rc==SQLITE_OK ){
    sqlite3_stmt *pChomp = 0;
    rc = fts3SqlStmt(p, SQL_CHOMP_SEGDIR, &pChomp, 0);
    if( rc==SQLITE_OK ){
      sqlite3_bind_int64(pChomp, 1, iNewStart);
      sqlite3_bind_blob(pChomp, 2, root.a, root.n, SQLITE_STATIC);
      sqlite3_bind_int64(pChomp, 3, iAbsLevel);
      sqlite3_bind_int(pChomp, 4, iIdx);
      sqlite3_step(pChomp);
      rc = sqlite3_reset(pChomp);
      sqlite3_bind_null(pChomp, 2);
    }
  }

  sqlite3_free(root.a);
  sqlite3_free(block.a);
  return rc;
}
