
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3 ;
typedef int check ;
struct TYPE_7__ {char const* zDb; char const* zTab; scalar_t__ rc; int nDim; int bInt; char* zReport; int ** aCheckMapping; int * pGetNode; int nNonLeaf; int nLeaf; int * db; } ;
typedef TYPE_1__ RtreeCheck ;


 int SQLITE_CORRUPT ;
 scalar_t__ SQLITE_INTEGER ;
 scalar_t__ SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int memset (TYPE_1__*,int ,int) ;
 int rtreeCheckAppendMsg (TYPE_1__*,char*) ;
 int rtreeCheckCount (TYPE_1__*,char*,int ) ;
 int rtreeCheckNode (TYPE_1__*,int ,int ,int) ;
 int * rtreeCheckPrepare (TYPE_1__*,char*,char const*,char const*) ;
 int sqlite3_column_count (int *) ;
 scalar_t__ sqlite3_column_type (int *,int) ;
 void* sqlite3_exec (int *,char*,int ,int ,int ) ;
 int sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_get_autocommit (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static int rtreeCheckTable(
  sqlite3 *db,
  const char *zDb,
  const char *zTab,
  char **pzReport
){
  RtreeCheck check;
  sqlite3_stmt *pStmt = 0;
  int bEnd = 0;
  int nAux = 0;


  memset(&check, 0, sizeof(check));
  check.db = db;
  check.zDb = zDb;
  check.zTab = zTab;




  if( sqlite3_get_autocommit(db) ){
    check.rc = sqlite3_exec(db, "BEGIN", 0, 0, 0);
    bEnd = 1;
  }


  if( check.rc==SQLITE_OK ){
    pStmt = rtreeCheckPrepare(&check, "SELECT * FROM %Q.'%q_rowid'", zDb, zTab);
    if( pStmt ){
      nAux = sqlite3_column_count(pStmt) - 2;
      sqlite3_finalize(pStmt);
    }
    check.rc = SQLITE_OK;
  }


  pStmt = rtreeCheckPrepare(&check, "SELECT * FROM %Q.%Q", zDb, zTab);
  if( pStmt ){
    int rc;
    check.nDim = (sqlite3_column_count(pStmt) - 1 - nAux) / 2;
    if( check.nDim<1 ){
      rtreeCheckAppendMsg(&check, "Schema corrupt or not an rtree");
    }else if( SQLITE_ROW==sqlite3_step(pStmt) ){
      check.bInt = (sqlite3_column_type(pStmt, 1)==SQLITE_INTEGER);
    }
    rc = sqlite3_finalize(pStmt);
    if( rc!=SQLITE_CORRUPT ) check.rc = rc;
  }


  if( check.nDim>=1 ){
    if( check.rc==SQLITE_OK ){
      rtreeCheckNode(&check, 0, 0, 1);
    }
    rtreeCheckCount(&check, "_rowid", check.nLeaf);
    rtreeCheckCount(&check, "_parent", check.nNonLeaf);
  }


  sqlite3_finalize(check.pGetNode);
  sqlite3_finalize(check.aCheckMapping[0]);
  sqlite3_finalize(check.aCheckMapping[1]);


  if( bEnd ){
    int rc = sqlite3_exec(db, "END", 0, 0, 0);
    if( check.rc==SQLITE_OK ) check.rc = rc;
  }
  *pzReport = check.zReport;
  return check.rc;
}
