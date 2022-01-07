
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PIMAGE_SECTION_HEADER ;
typedef scalar_t__ PBYTE ;
typedef scalar_t__ LPVOID ;
typedef scalar_t__ DWORD_PTR ;


 int * _FindPESection (scalar_t__,scalar_t__) ;
 int _ValidateImageBase (scalar_t__) ;
 int __ImageBase ;

PIMAGE_SECTION_HEADER
__mingw_GetSectionForAddress (LPVOID p)
{
  PBYTE pImageBase;
  DWORD_PTR rva;

  pImageBase = (PBYTE) &__ImageBase;
  if (! _ValidateImageBase (pImageBase))
    return ((void*)0);

  rva = (DWORD_PTR) (((PBYTE) p) - pImageBase);
  return _FindPESection (pImageBase, rva);
}
