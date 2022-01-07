
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite_int64 ;
typedef int sqlite3_stmt ;
typedef int fulltext_vtab ;
typedef int DocList ;


 int DL_DEFAULT ;
 int SQLITE_DONE ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int SQLITE_STATIC ;
 int TERM_SELECT_STMT ;
 int docListInit (int *,int ,int ,int ) ;
 int sql_get_statement (int *,int ,int **) ;
 int sql_step_statement (int *,int ,int **) ;
 int sqlite3_bind_int (int *,int,int) ;
 int sqlite3_bind_text (int *,int,char const*,int,int ) ;
 int sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 int sqlite3_column_int64 (int *,int ) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int term_select(fulltext_vtab *v, const char *pTerm, int nTerm,
                       int iSegment,
                       sqlite_int64 *rowid, DocList *out){
  sqlite3_stmt *s;
  int rc = sql_get_statement(v, TERM_SELECT_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_text(s, 1, pTerm, nTerm, SQLITE_STATIC);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_int(s, 2, iSegment);
  if( rc!=SQLITE_OK ) return rc;

  rc = sql_step_statement(v, TERM_SELECT_STMT, &s);
  if( rc!=SQLITE_ROW ) return rc;

  *rowid = sqlite3_column_int64(s, 0);
  docListInit(out, DL_DEFAULT,
              sqlite3_column_blob(s, 1), sqlite3_column_bytes(s, 1));



  rc = sqlite3_step(s);
  return rc==SQLITE_DONE ? SQLITE_ROW : rc;
}
