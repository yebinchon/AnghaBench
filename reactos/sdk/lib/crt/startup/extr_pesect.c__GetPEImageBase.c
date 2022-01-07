
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PBYTE ;


 int _ValidateImageBase (int *) ;
 int __ImageBase ;

PBYTE
_GetPEImageBase (void)
{
  PBYTE pImageBase;
  pImageBase = (PBYTE) &__ImageBase;
  if (! _ValidateImageBase (pImageBase))
    return ((void*)0);
  return pImageBase;
}
