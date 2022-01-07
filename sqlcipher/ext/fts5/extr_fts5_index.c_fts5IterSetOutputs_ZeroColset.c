
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nData; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef int Fts5SegIter ;
typedef TYPE_2__ Fts5Iter ;


 int UNUSED_PARAM (int *) ;

__attribute__((used)) static void fts5IterSetOutputs_ZeroColset(Fts5Iter *pIter, Fts5SegIter *pSeg){
  UNUSED_PARAM(pSeg);
  pIter->base.nData = 0;
}
