
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bEof; } ;
struct TYPE_4__ {int nLvl; TYPE_2__* aLvl; } ;
typedef TYPE_1__ Fts5DlidxIter ;


 int fts5DlidxLvlNext (TYPE_2__*) ;

__attribute__((used)) static int fts5DlidxIterFirst(Fts5DlidxIter *pIter){
  int i;
  for(i=0; i<pIter->nLvl; i++){
    fts5DlidxLvlNext(&pIter->aLvl[i]);
  }
  return pIter->aLvl[0].bEof;
}
