
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nCol; int* aiCol; } ;
typedef TYPE_1__ Fts5Colset ;



__attribute__((used)) static void fts5MergeColset(Fts5Colset *pColset, Fts5Colset *pMerge){
  int iIn = 0;
  int iMerge = 0;
  int iOut = 0;

  while( iIn<pColset->nCol && iMerge<pMerge->nCol ){
    int iDiff = pColset->aiCol[iIn] - pMerge->aiCol[iMerge];
    if( iDiff==0 ){
      pColset->aiCol[iOut++] = pMerge->aiCol[iMerge];
      iMerge++;
      iIn++;
    }else if( iDiff>0 ){
      iMerge++;
    }else{
      iIn++;
    }
  }
  pColset->nCol = iOut;
}
