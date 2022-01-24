#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ e_lfanew; } ;
struct TYPE_8__ {unsigned int NumberOfSections; } ;
struct TYPE_10__ {TYPE_1__ FileHeader; } ;
struct TYPE_9__ {int /*<<< orphan*/ * Name; } ;
typedef  TYPE_2__* PIMAGE_SECTION_HEADER ;
typedef  TYPE_3__* PIMAGE_NT_HEADERS ;
typedef  TYPE_4__* PIMAGE_DOS_HEADER ;
typedef  scalar_t__ PBYTE ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_3__*) ; 
 scalar_t__ IMAGE_SIZEOF_SHORT_NAME ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  __ImageBase ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,scalar_t__) ; 

PIMAGE_SECTION_HEADER
FUNC4 (const char *pName)
{
  PBYTE pImageBase;
  PIMAGE_NT_HEADERS pNTHeader;
  PIMAGE_SECTION_HEADER pSection;
  unsigned int iSection;

  /* Long names aren't supported.  */
  if (FUNC2 (pName) > IMAGE_SIZEOF_SHORT_NAME)
    return NULL;

  pImageBase = (PBYTE) &__ImageBase;
  if (! FUNC1 (pImageBase))
    return NULL;

  pNTHeader = (PIMAGE_NT_HEADERS) (pImageBase + ((PIMAGE_DOS_HEADER) pImageBase)->e_lfanew);

  for (iSection = 0, pSection = FUNC0 (pNTHeader);
    iSection < pNTHeader->FileHeader.NumberOfSections;
    ++iSection,++pSection)
    {
      if (!FUNC3 ((char *) &pSection->Name[0], pName, IMAGE_SIZEOF_SHORT_NAME))
	return pSection;
    }
  return NULL;
}