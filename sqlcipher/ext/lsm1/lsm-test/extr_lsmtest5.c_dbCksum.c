
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;


 int unused_parameter (int) ;

__attribute__((used)) static void dbCksum(
  void *pCtx,
  void *pKey, int nKey,
  void *pVal, int nVal
){
  u8 *aVal = (u8 *)pVal;
  u32 *pCksum = (u32 *)pCtx;
  u32 cksum = *pCksum;
  int i;

  unused_parameter(pKey);
  unused_parameter(nKey);

  for(i=0; i<nVal; i++){
    cksum += (cksum<<3) + (int)aVal[i];
  }

  *pCksum = cksum;
}
