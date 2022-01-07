
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_6__ {int nColumn; } ;
typedef TYPE_1__ fulltext_vtab ;
struct TYPE_7__ {int pStmt; } ;
typedef TYPE_2__ fulltext_cursor ;
typedef int c ;


 int SQLITE_OK ;
 int SQLITE_TRANSIENT ;
 TYPE_1__* cursor_vtab (TYPE_2__*) ;
 int * sqlite3_column_value (int ,int) ;
 int sqlite3_result_blob (int *,TYPE_2__**,int,int ) ;
 int sqlite3_result_value (int *,int *) ;

__attribute__((used)) static int fulltextColumn(sqlite3_vtab_cursor *pCursor,
                          sqlite3_context *pContext, int idxCol){
  fulltext_cursor *c = (fulltext_cursor *) pCursor;
  fulltext_vtab *v = cursor_vtab(c);

  if( idxCol<v->nColumn ){
    sqlite3_value *pVal = sqlite3_column_value(c->pStmt, idxCol+1);
    sqlite3_result_value(pContext, pVal);
  }else if( idxCol==v->nColumn ){



    sqlite3_result_blob(pContext, &c, sizeof(c), SQLITE_TRANSIENT);
  }
  return SQLITE_OK;
}
