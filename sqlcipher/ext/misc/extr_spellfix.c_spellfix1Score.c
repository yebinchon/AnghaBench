
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int spellfix1Score(int iDistance, int iRank){
  int iLog2;
  for(iLog2=0; iRank>0; iLog2++, iRank>>=1){}
  return iDistance + 32 - iLog2;
}
