
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_2__ {int pStmt; } ;
typedef TYPE_1__ fulltext_cursor ;


 int SQLITE_OK ;
 int SQLITE_TRANSIENT ;
 int assert (int) ;
 scalar_t__ sqlite3_column_text (int ,int) ;
 int sqlite3_result_text (int *,char const*,int,int ) ;

__attribute__((used)) static int fulltextColumn(sqlite3_vtab_cursor *pCursor,
                          sqlite3_context *pContext, int idxCol){
  fulltext_cursor *c = (fulltext_cursor *) pCursor;
  const char *s;

  assert( idxCol==0 );
  s = (const char *) sqlite3_column_text(c->pStmt, 1);
  sqlite3_result_text(pContext, s, -1, SQLITE_TRANSIENT);

  return SQLITE_OK;
}
