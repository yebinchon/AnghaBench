
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nColumn; struct TYPE_8__* azContentColumn; struct TYPE_8__* azColumn; TYPE_3__* pTokenizer; int ** pFulltextStatements; } ;
typedef TYPE_2__ fulltext_vtab ;
struct TYPE_9__ {TYPE_1__* pModule; } ;
struct TYPE_7__ {int (* xDestroy ) (TYPE_3__*) ;} ;


 int MAX_STMT ;
 int TRACE (char*) ;
 int free (TYPE_2__*) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (TYPE_2__) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void fulltext_vtab_destroy(fulltext_vtab *v){
  int iStmt, i;

  TRACE(("FTS1 Destroy %p\n", v));
  for( iStmt=0; iStmt<MAX_STMT; iStmt++ ){
    if( v->pFulltextStatements[iStmt]!=((void*)0) ){
      sqlite3_finalize(v->pFulltextStatements[iStmt]);
      v->pFulltextStatements[iStmt] = ((void*)0);
    }
  }

  if( v->pTokenizer!=((void*)0) ){
    v->pTokenizer->pModule->xDestroy(v->pTokenizer);
    v->pTokenizer = ((void*)0);
  }

  free(v->azColumn);
  for(i = 0; i < v->nColumn; ++i) {
    sqlite3_free(v->azContentColumn[i]);
  }
  free(v->azContentColumn);
  free(v);
}
