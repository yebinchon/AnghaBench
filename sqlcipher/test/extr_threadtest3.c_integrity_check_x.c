
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_7__ {int rc; char* zErr; } ;
struct TYPE_6__ {int * pStmt; } ;
typedef TYPE_1__ Statement ;
typedef int Sqlite ;
typedef TYPE_2__ Error ;


 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 TYPE_1__* getSqlStatement (TYPE_2__*,int *,char*) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;
 char* sqlite3_mprintf (char*,char const*,...) ;
 int sqlite3_reset (int *) ;
 scalar_t__ sqlite3_step (int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void integrity_check_x(
  Error *pErr,
  Sqlite *pDb
){
  if( pErr->rc==SQLITE_OK ){
    Statement *pStatement;
    char *zErr = 0;

    pStatement = getSqlStatement(pErr, pDb, "PRAGMA integrity_check");
    if( pStatement ){
      sqlite3_stmt *pStmt = pStatement->pStmt;
      while( SQLITE_ROW==sqlite3_step(pStmt) ){
        const char *z = (const char*)sqlite3_column_text(pStmt, 0);
        if( strcmp(z, "ok") ){
          if( zErr==0 ){
            zErr = sqlite3_mprintf("%s", z);
          }else{
            zErr = sqlite3_mprintf("%z\n%s", zErr, z);
          }
        }
      }
      sqlite3_reset(pStmt);

      if( zErr ){
        pErr->zErr = zErr;
        pErr->rc = 1;
      }
    }
  }
}
