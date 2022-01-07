
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i64 ;
typedef int CkptBuffer ;


 int ckptSetValue (int *,int ,int,int*) ;

__attribute__((used)) static void ckptAppend64(CkptBuffer *p, int *piOut, i64 iVal, int *pRc){
  int iOut = *piOut;
  ckptSetValue(p, iOut++, (iVal >> 32) & 0xFFFFFFFF, pRc);
  ckptSetValue(p, iOut++, (iVal & 0xFFFFFFFF), pRc);
  *piOut = iOut;
}
