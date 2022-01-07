
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite_int64 ;
typedef int sqlite3_stmt ;
typedef int fulltext_vtab ;


 int BLOCK_SELECT_STMT ;
 int SQLITE_DONE ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int assert (int) ;
 int getChildrenContaining (int ,int ,char const*,int,int,int *,int *) ;
 int sql_get_statement (int *,int ,int **) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int sqlite3_column_blob (int *,int ) ;
 int sqlite3_column_bytes (int *,int ) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int loadAndGetChildrenContaining(
  fulltext_vtab *v,
  sqlite_int64 iBlockid,
  const char *pTerm, int nTerm, int isPrefix,
  sqlite_int64 *piStartChild, sqlite_int64 *piEndChild
){
  sqlite3_stmt *s = ((void*)0);
  int rc;

  assert( iBlockid!=0 );
  assert( pTerm!=((void*)0) );
  assert( nTerm!=0 );
  assert( piStartChild!=((void*)0) );
  assert( piEndChild!=((void*)0) );

  rc = sql_get_statement(v, BLOCK_SELECT_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_int64(s, 1, iBlockid);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_step(s);
  if( rc==SQLITE_DONE ) return SQLITE_ERROR;
  if( rc!=SQLITE_ROW ) return rc;

  getChildrenContaining(sqlite3_column_blob(s, 0), sqlite3_column_bytes(s, 0),
                        pTerm, nTerm, isPrefix, piStartChild, piEndChild);




  rc = sqlite3_step(s);
  if( rc==SQLITE_ROW ) return SQLITE_ERROR;
  if( rc!=SQLITE_DONE ) return rc;

  return SQLITE_OK;
}
