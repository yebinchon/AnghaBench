
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nPhrase; struct TYPE_4__* pColset; int * apPhrase; } ;
typedef TYPE_1__ Fts5ExprNearset ;


 int fts5ExprPhraseFree (int ) ;
 int sqlite3_free (TYPE_1__*) ;

void sqlite3Fts5ParseNearsetFree(Fts5ExprNearset *pNear){
  if( pNear ){
    int i;
    for(i=0; i<pNear->nPhrase; i++){
      fts5ExprPhraseFree(pNear->apPhrase[i]);
    }
    sqlite3_free(pNear->pColset);
    sqlite3_free(pNear);
  }
}
