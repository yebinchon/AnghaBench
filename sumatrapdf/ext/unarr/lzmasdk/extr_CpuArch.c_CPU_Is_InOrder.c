
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;
typedef int Cx86cpuid ;
typedef int Bool ;





 int True ;
 int x86cpuid_CheckAndRead (int *) ;
 int x86cpuid_GetFamily (int *) ;
 int x86cpuid_GetFirm (int *) ;
 int x86cpuid_GetModel (int *) ;

Bool CPU_Is_InOrder()
{
  Cx86cpuid p;
  int firm;
  UInt32 family, model;
  if (!x86cpuid_CheckAndRead(&p))
    return True;
  family = x86cpuid_GetFamily(&p);
  model = x86cpuid_GetModel(&p);
  firm = x86cpuid_GetFirm(&p);
  switch (firm)
  {
    case 129: return (family < 6 || (family == 6 && (

           model == 0x100C
        || model == 0x2006
        || model == 0x2007
        || model == 0x3005
        || model == 0x3006
        )));
    case 130: return (family < 5 || (family == 5 && (model < 6 || model == 0xA)));
    case 128: return (family < 6 || (family == 6 && model < 0xF));
  }
  return True;
}
