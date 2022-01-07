
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_4__ {int * pDoclist; } ;
struct TYPE_5__ {TYPE_1__ result; int pStmt; } ;
typedef TYPE_2__ fulltext_cursor ;


 int SQLITE_OK ;
 int docListDelete (int *) ;
 int free (TYPE_2__*) ;
 int sqlite3_finalize (int ) ;

__attribute__((used)) static int fulltextClose(sqlite3_vtab_cursor *pCursor){
  fulltext_cursor *c = (fulltext_cursor *) pCursor;
  sqlite3_finalize(c->pStmt);
  if( c->result.pDoclist!=((void*)0) ){
    docListDelete(c->result.pDoclist);
  }
  free(c);
  return SQLITE_OK;
}
