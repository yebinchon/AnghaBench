
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pPg; int pSeg; } ;
typedef TYPE_1__ SegmentPtr ;
typedef int LsmBlob ;


 int sortedReadData (int ,int ,int,int,void**,int *) ;

__attribute__((used)) static int segmentPtrReadData(
  SegmentPtr *pPtr,
  int iOff,
  int nByte,
  void **ppData,
  LsmBlob *pBlob
){
  return sortedReadData(pPtr->pSeg, pPtr->pPg, iOff, nByte, ppData, pBlob);
}
