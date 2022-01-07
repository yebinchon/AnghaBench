
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bEof; int nChild; struct TYPE_3__** apChild; scalar_t__ bNomatch; } ;
typedef TYPE_1__ Fts5ExprNode ;



__attribute__((used)) static void fts5ExprSetEof(Fts5ExprNode *pNode){
  int i;
  pNode->bEof = 1;
  pNode->bNomatch = 0;
  for(i=0; i<pNode->nChild; i++){
    fts5ExprSetEof(pNode->apChild[i]);
  }
}
