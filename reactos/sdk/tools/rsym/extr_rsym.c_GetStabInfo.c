
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_6__ {size_t NumberOfSections; } ;
struct TYPE_5__ {scalar_t__* Name; size_t SizeOfRawData; int PointerToRawData; } ;
typedef TYPE_1__* PIMAGE_SECTION_HEADER ;
typedef TYPE_2__* PIMAGE_FILE_HEADER ;


 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
GetStabInfo(void *FileData, PIMAGE_FILE_HEADER PEFileHeader,
            PIMAGE_SECTION_HEADER PESectionHeaders,
            ULONG *StabSymbolsLength, void **StabSymbolsBase,
            ULONG *StabStringsLength, void **StabStringsBase)
{
    ULONG Idx;


    *StabSymbolsBase = ((void*)0);
    *StabSymbolsLength = 0;
    *StabStringsBase = ((void*)0);
    *StabStringsLength = 0;

    for (Idx = 0; Idx < PEFileHeader->NumberOfSections; Idx++)
    {

        if ((strncmp((char *) PESectionHeaders[Idx].Name, ".stab", 5) == 0)
            && (PESectionHeaders[Idx].Name[5] == 0))
        {


            *StabSymbolsLength = PESectionHeaders[Idx].SizeOfRawData;
            *StabSymbolsBase = (void *)((char *) FileData + PESectionHeaders[Idx].PointerToRawData);
        }

        if (strncmp((char *) PESectionHeaders[Idx].Name, ".stabstr", 8) == 0)
        {


            *StabStringsLength = PESectionHeaders[Idx].SizeOfRawData;
            *StabStringsBase = (void *)((char *) FileData + PESectionHeaders[Idx].PointerToRawData);
        }
    }

    return 0;
}
