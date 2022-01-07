
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nRight; int * aRhs; int lhs; } ;
typedef int Segment ;
typedef int LsmPgno ;
typedef TYPE_1__ Level ;


 scalar_t__ fsRunEndsBetween (int *,int *,int ,int ) ;

__attribute__((used)) static int fsLevelEndsBetween(
  Level *pLevel,
  Segment *pIgnore,
  LsmPgno iFirst,
  LsmPgno iLast
){
  int i;

  if( fsRunEndsBetween(&pLevel->lhs, pIgnore, iFirst, iLast) ){
    return 1;
  }
  for(i=0; i<pLevel->nRight; i++){
    if( fsRunEndsBetween(&pLevel->aRhs[i], pIgnore, iFirst, iLast) ){
      return 1;
    }
  }

  return 0;
}
