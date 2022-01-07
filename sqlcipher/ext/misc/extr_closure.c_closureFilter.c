
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
typedef int sqlite3_int64 ;
typedef int sQueue ;
struct TYPE_8__ {char* zErrMsg; } ;
struct TYPE_9__ {char* zTableName; char* zIdColumn; char* zParentColumn; int db; TYPE_1__ base; } ;
typedef TYPE_2__ closure_vtab ;
typedef int closure_queue ;
struct TYPE_10__ {int pClosure; int pCurrent; void* zParentColumn; void* zIdColumn; void* zTableName; TYPE_2__* pVtab; } ;
typedef TYPE_3__ closure_cursor ;
struct TYPE_11__ {int iGeneration; int id; } ;
typedef TYPE_4__ closure_avl ;


 scalar_t__ SQLITE_INTEGER ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int closureAvlFirst (int ) ;
 scalar_t__ closureAvlSearch (int ,int ) ;
 int closureClearCursor (TYPE_3__*) ;
 int closureInsertNode (int *,TYPE_3__*,int ,int) ;
 int memset (int *,int ,int) ;
 TYPE_4__* queuePull (int *) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int sqlite3_column_int64 (int *,int ) ;
 scalar_t__ sqlite3_column_type (int *,int ) ;
 char const* sqlite3_errmsg (int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 void* sqlite3_mprintf (char*,char const*,...) ;
 int sqlite3_prepare_v2 (int ,char*,int,int **,int ) ;
 int sqlite3_reset (int *) ;
 scalar_t__ sqlite3_step (int *) ;
 int sqlite3_value_int (int *) ;
 int sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static int closureFilter(
  sqlite3_vtab_cursor *pVtabCursor,
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  closure_cursor *pCur = (closure_cursor *)pVtabCursor;
  closure_vtab *pVtab = pCur->pVtab;
  sqlite3_int64 iRoot;
  int mxGen = 999999999;
  char *zSql;
  sqlite3_stmt *pStmt;
  closure_avl *pAvl;
  int rc = SQLITE_OK;
  const char *zTableName = pVtab->zTableName;
  const char *zIdColumn = pVtab->zIdColumn;
  const char *zParentColumn = pVtab->zParentColumn;
  closure_queue sQueue;

  (void)idxStr;
  (void)argc;
  closureClearCursor(pCur);
  memset(&sQueue, 0, sizeof(sQueue));
  if( (idxNum & 1)==0 ){

    return SQLITE_OK;
  }
  iRoot = sqlite3_value_int64(argv[0]);
  if( (idxNum & 0x000f0)!=0 ){
    mxGen = sqlite3_value_int(argv[(idxNum>>4)&0x0f]);
    if( (idxNum & 0x00002)!=0 ) mxGen--;
  }
  if( (idxNum & 0x00f00)!=0 ){
    zTableName = (const char*)sqlite3_value_text(argv[(idxNum>>8)&0x0f]);
    pCur->zTableName = sqlite3_mprintf("%s", zTableName);
  }
  if( (idxNum & 0x0f000)!=0 ){
    zIdColumn = (const char*)sqlite3_value_text(argv[(idxNum>>12)&0x0f]);
    pCur->zIdColumn = sqlite3_mprintf("%s", zIdColumn);
  }
  if( (idxNum & 0x0f0000)!=0 ){
    zParentColumn = (const char*)sqlite3_value_text(argv[(idxNum>>16)&0x0f]);
    pCur->zParentColumn = sqlite3_mprintf("%s", zParentColumn);
  }

  zSql = sqlite3_mprintf(
       "SELECT \"%w\".\"%w\" FROM \"%w\" WHERE \"%w\".\"%w\"=?1",
       zTableName, zIdColumn, zTableName, zTableName, zParentColumn);
  if( zSql==0 ){
    return SQLITE_NOMEM;
  }else{
    rc = sqlite3_prepare_v2(pVtab->db, zSql, -1, &pStmt, 0);
    sqlite3_free(zSql);
    if( rc ){
      sqlite3_free(pVtab->base.zErrMsg);
      pVtab->base.zErrMsg = sqlite3_mprintf("%s", sqlite3_errmsg(pVtab->db));
      return rc;
    }
  }
  if( rc==SQLITE_OK ){
    rc = closureInsertNode(&sQueue, pCur, iRoot, 0);
  }
  while( (pAvl = queuePull(&sQueue))!=0 ){
    if( pAvl->iGeneration>=mxGen ) continue;
    sqlite3_bind_int64(pStmt, 1, pAvl->id);
    while( rc==SQLITE_OK && sqlite3_step(pStmt)==SQLITE_ROW ){
      if( sqlite3_column_type(pStmt,0)==SQLITE_INTEGER ){
        sqlite3_int64 iNew = sqlite3_column_int64(pStmt, 0);
        if( closureAvlSearch(pCur->pClosure, iNew)==0 ){
          rc = closureInsertNode(&sQueue, pCur, iNew, pAvl->iGeneration+1);
        }
      }
    }
    sqlite3_reset(pStmt);
  }
  sqlite3_finalize(pStmt);
  if( rc==SQLITE_OK ){
    pCur->pCurrent = closureAvlFirst(pCur->pClosure);
  }

  return rc;
}
