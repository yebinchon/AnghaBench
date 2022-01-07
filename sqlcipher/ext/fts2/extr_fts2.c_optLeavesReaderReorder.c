
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OptLeavesReader ;


 scalar_t__ optLeavesReaderCmp (int *,int *) ;

__attribute__((used)) static void optLeavesReaderReorder(OptLeavesReader *pLr, int nLr){
  while( nLr>1 && optLeavesReaderCmp(pLr, pLr+1)>0 ){
    OptLeavesReader tmp = pLr[0];
    pLr[0] = pLr[1];
    pLr[1] = tmp;
    nLr--;
    pLr++;
  }
}
