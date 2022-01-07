
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nSize; int iRoot; int iLastPg; int iFirst; } ;
typedef TYPE_1__ Segment ;
typedef int CkptBuffer ;


 int ckptAppend64 (int *,int*,int ,int*) ;

__attribute__((used)) static void ckptExportSegment(
  Segment *pSeg,
  CkptBuffer *p,
  int *piOut,
  int *pRc
){
  ckptAppend64(p, piOut, pSeg->iFirst, pRc);
  ckptAppend64(p, piOut, pSeg->iLastPg, pRc);
  ckptAppend64(p, piOut, pSeg->iRoot, pRc);
  ckptAppend64(p, piOut, pSeg->nSize, pRc);
}
