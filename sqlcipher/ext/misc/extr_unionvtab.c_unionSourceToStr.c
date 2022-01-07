
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3 ;
typedef int UnionTab ;
struct TYPE_5__ {int zDb; int zTab; } ;
typedef TYPE_1__ UnionSrc ;


 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQLITE_STATIC ;
 int sqlite3_bind_text (int *,int,int ,int,int ) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;
 scalar_t__ sqlite3_step (int *) ;
 int unionFinalize (int*,int *,char**) ;
 int * unionGetDb (int *,TYPE_1__*) ;
 int unionIsIntkeyTable (int *,TYPE_1__*,char**) ;
 int * unionPrepare (int*,int *,char*,char**) ;
 char* unionStrdup (int*,char const*) ;

__attribute__((used)) static char *unionSourceToStr(
  int *pRc,
  UnionTab *pTab,
  UnionSrc *pSrc,
  char **pzErr
){
  char *zRet = 0;
  if( *pRc==SQLITE_OK ){
    sqlite3 *db = unionGetDb(pTab, pSrc);
    int rc = unionIsIntkeyTable(db, pSrc, pzErr);
    sqlite3_stmt *pStmt = unionPrepare(&rc, db,
        "SELECT group_concat(quote(name) || '.' || quote(type)) "
        "FROM pragma_table_info(?, ?)", pzErr
    );
    if( rc==SQLITE_OK ){
      sqlite3_bind_text(pStmt, 1, pSrc->zTab, -1, SQLITE_STATIC);
      sqlite3_bind_text(pStmt, 2, pSrc->zDb, -1, SQLITE_STATIC);
      if( SQLITE_ROW==sqlite3_step(pStmt) ){
        const char *z = (const char*)sqlite3_column_text(pStmt, 0);
        zRet = unionStrdup(&rc, z);
      }
      unionFinalize(&rc, pStmt, pzErr);
    }
    *pRc = rc;
  }

  return zRet;
}
