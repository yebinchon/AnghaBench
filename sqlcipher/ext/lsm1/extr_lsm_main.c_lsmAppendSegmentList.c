
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nSize; int iRoot; int iLastPg; int iFirst; } ;
typedef TYPE_1__ Segment ;
typedef int LsmString ;


 int lsmStringAppendf (int *,char*,char*,int ,int ,int ,int ) ;

void lsmAppendSegmentList(LsmString *pStr, char *zPre, Segment *pSeg){
  lsmStringAppendf(pStr, "%s{%d %d %d %d}", zPre,
        pSeg->iFirst, pSeg->iLastPg, pSeg->iRoot, pSeg->nSize
  );
}
