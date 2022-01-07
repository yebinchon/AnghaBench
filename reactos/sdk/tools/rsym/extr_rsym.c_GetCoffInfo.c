
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {scalar_t__ PointerToSymbolTable; int NumberOfSymbols; } ;
typedef int PIMAGE_SECTION_HEADER ;
typedef TYPE_1__* PIMAGE_FILE_HEADER ;
typedef int COFF_SYMENT ;



__attribute__((used)) static int
GetCoffInfo(void *FileData, PIMAGE_FILE_HEADER PEFileHeader,
            PIMAGE_SECTION_HEADER PESectionHeaders,
            ULONG *CoffSymbolsLength, void **CoffSymbolsBase,
            ULONG *CoffStringsLength, void **CoffStringsBase)
{

    if (PEFileHeader->PointerToSymbolTable == 0 || PEFileHeader->NumberOfSymbols == 0)
    {

        *CoffSymbolsLength = 0;
        *CoffStringsLength = 0;
    }
    else
    {
        *CoffSymbolsLength = PEFileHeader->NumberOfSymbols * sizeof(COFF_SYMENT);
        *CoffSymbolsBase = (void *)((char *) FileData + PEFileHeader->PointerToSymbolTable);
        *CoffStringsLength = *((ULONG *) ((char *) *CoffSymbolsBase + *CoffSymbolsLength));
        *CoffStringsBase = (void *)((char *) *CoffSymbolsBase + *CoffSymbolsLength);
    }

    return 0;
}
