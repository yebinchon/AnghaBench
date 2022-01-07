
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LeavesReader ;


 scalar_t__ leavesReaderCmp (int *,int *) ;

__attribute__((used)) static void leavesReaderReorder(LeavesReader *pLr, int nLr){
  while( nLr>1 && leavesReaderCmp(pLr, pLr+1)>0 ){
    LeavesReader tmp = pLr[0];
    pLr[0] = pLr[1];
    pLr[1] = tmp;
    nLr--;
    pLr++;
  }
}
