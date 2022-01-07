
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* apExprPhrase; int pRoot; } ;
typedef TYPE_1__ Fts5Expr ;


 int sqlite3Fts5ParseNodeFree (int ) ;
 int sqlite3_free (TYPE_1__*) ;

void sqlite3Fts5ExprFree(Fts5Expr *p){
  if( p ){
    sqlite3Fts5ParseNodeFree(p->pRoot);
    sqlite3_free(p->apExprPhrase);
    sqlite3_free(p);
  }
}
