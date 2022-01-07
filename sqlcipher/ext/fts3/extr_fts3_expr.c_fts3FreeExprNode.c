
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ eType; scalar_t__ pPhrase; struct TYPE_4__* aMI; } ;
typedef TYPE_1__ Fts3Expr ;


 scalar_t__ FTSQUERY_PHRASE ;
 int assert (int) ;
 int sqlite3Fts3EvalPhraseCleanup (scalar_t__) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static void fts3FreeExprNode(Fts3Expr *p){
  assert( p->eType==FTSQUERY_PHRASE || p->pPhrase==0 );
  sqlite3Fts3EvalPhraseCleanup(p->pPhrase);
  sqlite3_free(p->aMI);
  sqlite3_free(p);
}
