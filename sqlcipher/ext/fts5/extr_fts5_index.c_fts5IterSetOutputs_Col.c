
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int n; int p; } ;
struct TYPE_9__ {int nData; int pData; int iRowid; } ;
struct TYPE_11__ {TYPE_5__ poslist; TYPE_1__ base; int pColset; int pIndex; } ;
struct TYPE_10__ {int iRowid; } ;
typedef TYPE_2__ Fts5SegIter ;
typedef TYPE_3__ Fts5Iter ;


 int fts5BufferZero (TYPE_5__*) ;
 int fts5SegiterPoslist (int ,TYPE_2__*,int ,TYPE_5__*) ;

__attribute__((used)) static void fts5IterSetOutputs_Col(Fts5Iter *pIter, Fts5SegIter *pSeg){
  fts5BufferZero(&pIter->poslist);
  fts5SegiterPoslist(pIter->pIndex, pSeg, pIter->pColset, &pIter->poslist);
  pIter->base.iRowid = pSeg->iRowid;
  pIter->base.pData = pIter->poslist.p;
  pIter->base.nData = pIter->poslist.n;
}
