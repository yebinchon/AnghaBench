
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_3__ {int zName; int db; } ;
typedef TYPE_1__ fulltext_vtab ;


 int SQLITE_OK ;
 int SQLITE_TRANSIENT ;
 int sql_prepare (int ,int ,int **,char*) ;
 int sqlite3_bind_text (int *,int,char const*,int,int ) ;
 int sqlite3_reset (int *) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int term_select_doclist(fulltext_vtab *v, const char *pTerm, int nTerm,
                               sqlite3_stmt **ppStmt){
  int rc;
  if( *ppStmt ){
    rc = sqlite3_reset(*ppStmt);
  } else {
    rc = sql_prepare(v->db, v->zName, ppStmt,
      "select doclist from %_term where term = ? order by first");
  }
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_text(*ppStmt, 1, pTerm, nTerm, SQLITE_TRANSIENT);
  if( rc!=SQLITE_OK ) return rc;

  return sqlite3_step(*ppStmt);
}
