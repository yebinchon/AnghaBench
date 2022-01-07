
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite_int64 ;
typedef int sqlite3_stmt ;
typedef int fulltext_vtab ;


 int SQLITE_DONE ;
 int SQLITE_ERROR ;


 int SQLITE_OK ;
 int SQLITE_ROW ;
 int SQLITE_STATIC ;
 int TERM_CHUNK_SELECT_STMT ;
 int sql_get_statement (int *,int ,int **) ;
 int sql_step_statement (int *,int ,int **) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int sqlite3_bind_text (int *,int,char const*,int,int ) ;
 int sqlite3_column_int64 (int *,int ) ;
 int sqlite3_column_type (int *,int ) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int term_chunk_select(fulltext_vtab *v, const char *zTerm, int nTerm,
                           sqlite_int64 iFirst, sqlite_int64 *piResult){
  sqlite3_stmt *s;
  int rc = sql_get_statement(v, TERM_CHUNK_SELECT_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_text(s, 1, zTerm, nTerm, SQLITE_STATIC);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_int64(s, 2, iFirst);
  if( rc!=SQLITE_OK ) return rc;

  rc = sql_step_statement(v, TERM_CHUNK_SELECT_STMT, &s);
  if( rc!=SQLITE_ROW ) return rc==SQLITE_DONE ? SQLITE_ERROR : rc;

  switch( sqlite3_column_type(s, 0) ){
    case 128:
      rc = SQLITE_DONE;
      break;
    case 129:
     *piResult = sqlite3_column_int64(s, 0);
     break;
    default:
      return SQLITE_ERROR;
  }


  if( sqlite3_step(s) != SQLITE_DONE ) return SQLITE_ERROR;
  return rc;
}
