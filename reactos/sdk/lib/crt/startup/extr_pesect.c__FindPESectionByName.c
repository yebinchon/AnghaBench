
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ e_lfanew; } ;
struct TYPE_8__ {unsigned int NumberOfSections; } ;
struct TYPE_10__ {TYPE_1__ FileHeader; } ;
struct TYPE_9__ {int * Name; } ;
typedef TYPE_2__* PIMAGE_SECTION_HEADER ;
typedef TYPE_3__* PIMAGE_NT_HEADERS ;
typedef TYPE_4__* PIMAGE_DOS_HEADER ;
typedef scalar_t__ PBYTE ;


 TYPE_2__* IMAGE_FIRST_SECTION (TYPE_3__*) ;
 scalar_t__ IMAGE_SIZEOF_SHORT_NAME ;
 int _ValidateImageBase (scalar_t__) ;
 int __ImageBase ;
 scalar_t__ strlen (char const*) ;
 int strncmp (char*,char const*,scalar_t__) ;

PIMAGE_SECTION_HEADER
_FindPESectionByName (const char *pName)
{
  PBYTE pImageBase;
  PIMAGE_NT_HEADERS pNTHeader;
  PIMAGE_SECTION_HEADER pSection;
  unsigned int iSection;


  if (strlen (pName) > IMAGE_SIZEOF_SHORT_NAME)
    return ((void*)0);

  pImageBase = (PBYTE) &__ImageBase;
  if (! _ValidateImageBase (pImageBase))
    return ((void*)0);

  pNTHeader = (PIMAGE_NT_HEADERS) (pImageBase + ((PIMAGE_DOS_HEADER) pImageBase)->e_lfanew);

  for (iSection = 0, pSection = IMAGE_FIRST_SECTION (pNTHeader);
    iSection < pNTHeader->FileHeader.NumberOfSections;
    ++iSection,++pSection)
    {
      if (!strncmp ((char *) &pSection->Name[0], pName, IMAGE_SIZEOF_SHORT_NAME))
 return pSection;
    }
  return ((void*)0);
}
