
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite_int64 ;
typedef int sqlite3_stmt ;
typedef int fulltext_vtab ;
typedef int DocList ;


 int DL_POSITIONS_OFFSETS ;
 int SQLITE_DONE ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int SQLITE_TRANSIENT ;
 int TERM_SELECT_STMT ;
 int docListInit (int *,int ,int ,int ) ;
 int sql_get_statement (int *,int ,int **) ;
 int sql_step_statement (int *,int ,int **) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int sqlite3_bind_text (int *,int,char const*,int,int ) ;
 int sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 int sqlite3_column_int64 (int *,int ) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int term_select(fulltext_vtab *v, const char *zTerm, int nTerm,
                       sqlite_int64 iFirst,
                       sqlite_int64 *rowid,
                       DocList *out){
  sqlite3_stmt *s;
  int rc = sql_get_statement(v, TERM_SELECT_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_text(s, 1, zTerm, nTerm, SQLITE_TRANSIENT);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_int64(s, 2, iFirst);
  if( rc!=SQLITE_OK ) return rc;

  rc = sql_step_statement(v, TERM_SELECT_STMT, &s);
  if( rc!=SQLITE_ROW ) return rc==SQLITE_DONE ? SQLITE_ERROR : rc;

  *rowid = sqlite3_column_int64(s, 0);
  docListInit(out, DL_POSITIONS_OFFSETS,
              sqlite3_column_blob(s, 1), sqlite3_column_bytes(s, 1));



  rc = sqlite3_step(s);
  return rc==SQLITE_DONE ? SQLITE_OK : rc;
}
