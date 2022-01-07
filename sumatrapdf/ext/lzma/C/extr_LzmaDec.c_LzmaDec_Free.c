
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ISzAlloc ;
typedef int CLzmaDec ;


 int LzmaDec_FreeDict (int *,int *) ;
 int LzmaDec_FreeProbs (int *,int *) ;

void LzmaDec_Free(CLzmaDec *p, ISzAlloc *alloc)
{
  LzmaDec_FreeProbs(p, alloc);
  LzmaDec_FreeDict(p, alloc);
}
