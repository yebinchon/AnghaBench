
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nLvl; TYPE_1__* aLvl; } ;
struct TYPE_5__ {int pData; } ;
typedef TYPE_2__ Fts5DlidxIter ;


 int fts5DataRelease (int ) ;
 int sqlite3_free (TYPE_2__*) ;

__attribute__((used)) static void fts5DlidxIterFree(Fts5DlidxIter *pIter){
  if( pIter ){
    int i;
    for(i=0; i<pIter->nLvl; i++){
      fts5DataRelease(pIter->aLvl[i].pData);
    }
    sqlite3_free(pIter);
  }
}
