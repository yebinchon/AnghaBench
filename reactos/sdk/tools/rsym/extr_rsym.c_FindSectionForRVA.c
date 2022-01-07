
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ VirtualSize; } ;
struct TYPE_6__ {scalar_t__ VirtualAddress; TYPE_1__ Misc; } ;
typedef TYPE_2__* PIMAGE_SECTION_HEADER ;
typedef scalar_t__ DWORD ;



__attribute__((used)) static PIMAGE_SECTION_HEADER
FindSectionForRVA(DWORD RVA, unsigned NumberOfSections, PIMAGE_SECTION_HEADER SectionHeaders)
{
    unsigned Section;

    for (Section = 0; Section < NumberOfSections; Section++)
    {
        if (SectionHeaders[Section].VirtualAddress <= RVA &&
            RVA < SectionHeaders[Section].VirtualAddress + SectionHeaders[Section].Misc.VirtualSize)
        {
            return SectionHeaders + Section;
        }
    }

    return ((void*)0);
}
