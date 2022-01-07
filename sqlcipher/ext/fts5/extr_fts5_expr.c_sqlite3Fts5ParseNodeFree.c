
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nChild; int pNear; struct TYPE_4__** apChild; } ;
typedef TYPE_1__ Fts5ExprNode ;


 int sqlite3Fts5ParseNearsetFree (int ) ;
 int sqlite3_free (TYPE_1__*) ;

void sqlite3Fts5ParseNodeFree(Fts5ExprNode *p){
  if( p ){
    int i;
    for(i=0; i<p->nChild; i++){
      sqlite3Fts5ParseNodeFree(p->apChild[i]);
    }
    sqlite3Fts5ParseNearsetFree(p->pNear);
    sqlite3_free(p);
  }
}
