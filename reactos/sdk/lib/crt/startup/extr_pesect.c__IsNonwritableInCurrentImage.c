
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINBOOL ;
struct TYPE_3__ {int Characteristics; } ;
typedef TYPE_1__* PIMAGE_SECTION_HEADER ;
typedef scalar_t__ PBYTE ;
typedef scalar_t__ DWORD_PTR ;


 int FALSE ;
 int IMAGE_SCN_MEM_WRITE ;
 TYPE_1__* _FindPESection (scalar_t__,scalar_t__) ;
 int _ValidateImageBase (scalar_t__) ;
 int __ImageBase ;

WINBOOL
_IsNonwritableInCurrentImage (PBYTE pTarget)
{
  PBYTE pImageBase;
  DWORD_PTR rvaTarget;
  PIMAGE_SECTION_HEADER pSection;

  pImageBase = (PBYTE) &__ImageBase;
  if (! _ValidateImageBase (pImageBase))
    return FALSE;
  rvaTarget = pTarget - pImageBase;
  pSection = _FindPESection (pImageBase, rvaTarget);
  if (pSection == ((void*)0))
    return FALSE;
  return (pSection->Characteristics & IMAGE_SCN_MEM_WRITE) == 0;
}
