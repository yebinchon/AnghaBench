
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ e_lfanew; } ;
struct TYPE_9__ {scalar_t__ TimeDateStamp; scalar_t__ Name; } ;
struct TYPE_7__ {TYPE_1__* DataDirectory; } ;
struct TYPE_8__ {TYPE_2__ OptionalHeader; } ;
struct TYPE_6__ {scalar_t__ VirtualAddress; } ;
typedef int PIMAGE_SECTION_HEADER ;
typedef TYPE_3__* PIMAGE_NT_HEADERS ;
typedef TYPE_4__* PIMAGE_IMPORT_DESCRIPTOR ;
typedef TYPE_5__* PIMAGE_DOS_HEADER ;
typedef scalar_t__ PBYTE ;
typedef scalar_t__ DWORD ;


 size_t IMAGE_DIRECTORY_ENTRY_IMPORT ;
 int _FindPESection (scalar_t__,scalar_t__) ;
 int _ValidateImageBase (scalar_t__) ;
 int __ImageBase ;

const char *
__mingw_enum_import_library_names (int i)
{
  PBYTE pImageBase;
  PIMAGE_NT_HEADERS pNTHeader;
  PIMAGE_IMPORT_DESCRIPTOR importDesc;
  PIMAGE_SECTION_HEADER pSection;
  DWORD importsStartRVA;

  pImageBase = (PBYTE) &__ImageBase;
  if (! _ValidateImageBase (pImageBase))
    return ((void*)0);

  pNTHeader = (PIMAGE_NT_HEADERS) (pImageBase + ((PIMAGE_DOS_HEADER) pImageBase)->e_lfanew);

  importsStartRVA = pNTHeader->OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_IMPORT].VirtualAddress;
  if (!importsStartRVA)
    return ((void*)0);

  pSection = _FindPESection (pImageBase, importsStartRVA);
  if (!pSection)
      return ((void*)0);

  importDesc = (PIMAGE_IMPORT_DESCRIPTOR) (pImageBase + importsStartRVA);
  if (!importDesc)
    return ((void*)0);

  for (;;)
    {
      if (importDesc->TimeDateStamp == 0 && importDesc->Name == 0)
        break;

      if (i <= 0)
       return (char *) (pImageBase + importDesc->Name);
      --i;
      importDesc++;
    }

  return ((void*)0);
}
