
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_5__ {int nColumn; } ;
typedef TYPE_1__ fulltext_vtab ;
typedef int DocList ;


 int DL_DEFAULT ;
 int SQLITE_DONE ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int SQLITE_STATIC ;
 int TERM_SELECT_ALL_STMT ;
 int docListAccumulate (int *,int *) ;
 int docListDestroy (int *) ;
 int docListDiscardEmpty (int *) ;
 int docListInit (int *,int ,int ,int ) ;
 int docListRestrictColumn (int *,int) ;
 int sql_get_statement (TYPE_1__*,int ,int **) ;
 int sql_step_statement (TYPE_1__*,int ,int **) ;
 int sqlite3_bind_text (int *,int,char const*,int,int ) ;
 int sqlite3_column_blob (int *,int ) ;
 int sqlite3_column_bytes (int *,int ) ;

__attribute__((used)) static int term_select_all(
  fulltext_vtab *v,
  int iColumn,
  const char *pTerm,
  int nTerm,
  DocList *out
){
  DocList doclist;
  sqlite3_stmt *s;
  int rc = sql_get_statement(v, TERM_SELECT_ALL_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_text(s, 1, pTerm, nTerm, SQLITE_STATIC);
  if( rc!=SQLITE_OK ) return rc;

  docListInit(&doclist, DL_DEFAULT, 0, 0);


  while( (rc=sql_step_statement(v, TERM_SELECT_ALL_STMT, &s))==SQLITE_ROW ){
    DocList old;







    docListInit(&old, DL_DEFAULT,
                sqlite3_column_blob(s, 0), sqlite3_column_bytes(s, 0));

    if( iColumn<v->nColumn ){
      docListRestrictColumn(&old, iColumn);
    }




    docListAccumulate(&old, &doclist);
    docListDestroy(&doclist);
    doclist = old;
  }
  if( rc!=SQLITE_DONE ){
    docListDestroy(&doclist);
    return rc;
  }

  docListDiscardEmpty(&doclist);
  *out = doclist;
  return SQLITE_OK;
}
