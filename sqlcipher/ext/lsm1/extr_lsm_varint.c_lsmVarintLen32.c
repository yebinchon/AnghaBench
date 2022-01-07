
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int lsmVarintPut32 (int *,int) ;

int lsmVarintLen32(int n){
  u8 aData[9];
  return lsmVarintPut32(aData, n);
}
