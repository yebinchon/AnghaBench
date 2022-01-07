
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_stmt ;
typedef int fulltext_vtab ;
struct TYPE_3__ {int nData; int pData; } ;
typedef TYPE_1__ DocList ;


 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int TERM_INSERT_STMT ;
 int sql_get_statement (int *,int ,int **) ;
 int sql_single_step_statement (int *,int ,int **) ;
 int sqlite3_bind_blob (int *,int,int ,int ,int ) ;
 int sqlite3_bind_int (int *,int,int) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int sqlite3_bind_null (int *,int) ;
 int sqlite3_bind_text (int *,int,char const*,int,int ) ;

__attribute__((used)) static int term_insert(fulltext_vtab *v, sqlite_int64 *piRowid,
                       const char *pTerm, int nTerm,
                       int iSegment, DocList *doclist){
  sqlite3_stmt *s;
  int rc = sql_get_statement(v, TERM_INSERT_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  if( piRowid==((void*)0) ){
    rc = sqlite3_bind_null(s, 1);
  }else{
    rc = sqlite3_bind_int64(s, 1, *piRowid);
  }
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_text(s, 2, pTerm, nTerm, SQLITE_STATIC);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_int(s, 3, iSegment);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_blob(s, 4, doclist->pData, doclist->nData, SQLITE_STATIC);
  if( rc!=SQLITE_OK ) return rc;

  return sql_single_step_statement(v, TERM_INSERT_STMT, &s);
}
