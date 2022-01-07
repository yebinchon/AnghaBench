
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3 ;
struct TYPE_4__ {int rcErr; } ;
typedef TYPE_1__ ScrubState ;


 int scrubBackupErr (TYPE_1__*,char*,int ,char const*) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int *,char const*,int,int **,int ) ;

__attribute__((used)) static sqlite3_stmt *scrubBackupPrepare(
  ScrubState *p,
  sqlite3 *db,
  const char *zSql
){
  sqlite3_stmt *pStmt;
  if( p->rcErr ) return 0;
  p->rcErr = sqlite3_prepare_v2(db, zSql, -1, &pStmt, 0);
  if( p->rcErr ){
    scrubBackupErr(p, "SQL error \"%s\" on \"%s\"",
                   sqlite3_errmsg(db), zSql);
    sqlite3_finalize(pStmt);
    return 0;
  }
  return pStmt;
}
