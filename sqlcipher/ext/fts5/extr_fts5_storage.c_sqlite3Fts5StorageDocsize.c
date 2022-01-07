
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_stmt ;
typedef int i64 ;
struct TYPE_6__ {TYPE_1__* pConfig; } ;
struct TYPE_5__ {int nCol; int bColumnsize; } ;
typedef TYPE_2__ Fts5Storage ;


 int FTS5_CORRUPT ;
 int FTS5_STMT_LOOKUP_DOCSIZE ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int assert (int ) ;
 scalar_t__ fts5StorageDecodeSizeArray (int*,int,int const*,int) ;
 int fts5StorageGetStmt (TYPE_2__*,int ,int **,int ) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int * sqlite3_column_blob (int *,int ) ;
 int sqlite3_column_bytes (int *,int ) ;
 int sqlite3_reset (int *) ;
 scalar_t__ sqlite3_step (int *) ;

int sqlite3Fts5StorageDocsize(Fts5Storage *p, i64 iRowid, int *aCol){
  int nCol = p->pConfig->nCol;
  sqlite3_stmt *pLookup = 0;
  int rc;

  assert( p->pConfig->bColumnsize );
  rc = fts5StorageGetStmt(p, FTS5_STMT_LOOKUP_DOCSIZE, &pLookup, 0);
  if( rc==SQLITE_OK ){
    int bCorrupt = 1;
    sqlite3_bind_int64(pLookup, 1, iRowid);
    if( SQLITE_ROW==sqlite3_step(pLookup) ){
      const u8 *aBlob = sqlite3_column_blob(pLookup, 0);
      int nBlob = sqlite3_column_bytes(pLookup, 0);
      if( 0==fts5StorageDecodeSizeArray(aCol, nCol, aBlob, nBlob) ){
        bCorrupt = 0;
      }
    }
    rc = sqlite3_reset(pLookup);
    if( bCorrupt && rc==SQLITE_OK ){
      rc = FTS5_CORRUPT;
    }
  }

  return rc;
}
