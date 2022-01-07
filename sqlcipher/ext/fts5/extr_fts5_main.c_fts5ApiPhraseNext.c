
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ a; scalar_t__ b; } ;
typedef TYPE_1__ Fts5PhraseIter ;
typedef int Fts5Context ;


 int UNUSED_PARAM (int *) ;
 scalar_t__ fts5GetVarint32 (scalar_t__,int) ;

__attribute__((used)) static void fts5ApiPhraseNext(
  Fts5Context *pUnused,
  Fts5PhraseIter *pIter,
  int *piCol, int *piOff
){
  UNUSED_PARAM(pUnused);
  if( pIter->a>=pIter->b ){
    *piCol = -1;
    *piOff = -1;
  }else{
    int iVal;
    pIter->a += fts5GetVarint32(pIter->a, iVal);
    if( iVal==1 ){
      pIter->a += fts5GetVarint32(pIter->a, iVal);
      *piCol = iVal;
      *piOff = 0;
      pIter->a += fts5GetVarint32(pIter->a, iVal);
    }
    *piOff += (iVal-2);
  }
}
