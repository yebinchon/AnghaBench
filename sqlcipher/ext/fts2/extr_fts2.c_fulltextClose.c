
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_5__ {scalar_t__ nData; } ;
struct TYPE_4__ {TYPE_3__ result; int reader; int snippet; int q; int pStmt; } ;
typedef TYPE_1__ fulltext_cursor ;


 int SQLITE_OK ;
 int TRACE (char*) ;
 int dataBufferDestroy (TYPE_3__*) ;
 int dlrDestroy (int *) ;
 int queryClear (int *) ;
 int snippetClear (int *) ;
 int sqlite3_finalize (int ) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int fulltextClose(sqlite3_vtab_cursor *pCursor){
  fulltext_cursor *c = (fulltext_cursor *) pCursor;
  TRACE(("FTS2 Close %p\n", c));
  sqlite3_finalize(c->pStmt);
  queryClear(&c->q);
  snippetClear(&c->snippet);
  if( c->result.nData!=0 ) dlrDestroy(&c->reader);
  dataBufferDestroy(&c->result);
  sqlite3_free(c);
  return SQLITE_OK;
}
