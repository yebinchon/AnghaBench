
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_8__ {int PointerToRawData; int PointerToRelocations; unsigned int NumberOfRelocations; unsigned int VirtualAddress; unsigned int SizeOfRawData; } ;
struct TYPE_7__ {unsigned int VirtualAddress; int Type; size_t SymbolTableIndex; } ;
struct TYPE_6__ {int Value; } ;
typedef TYPE_1__* PIMAGE_SYMBOL ;
typedef TYPE_2__* PIMAGE_RELOCATION ;
typedef TYPE_3__ IMAGE_SECTION_HEADER ;
typedef int DWORD ;




 int printf (char*,int,unsigned int) ;

__attribute__((used)) static
void
RelocateSection(
    char *pData,
    IMAGE_SECTION_HEADER *pSectionHeader,
    PIMAGE_SYMBOL pSymbols,
    unsigned int iOffset)
{
    unsigned int i, nOffset;
    PIMAGE_RELOCATION pReloc;
    char *pSection;
    WORD *p16;
    DWORD *p32;

    pSection = pData + pSectionHeader->PointerToRawData;


    pReloc = (PIMAGE_RELOCATION)(pData + pSectionHeader->PointerToRelocations);


    for (i = 0; i < pSectionHeader->NumberOfRelocations; i++)
    {
        nOffset = pReloc->VirtualAddress - pSectionHeader->VirtualAddress;

        if (nOffset > pSectionHeader->SizeOfRawData) continue;

        switch (pReloc->Type)
        {
            case 129:
            case 16:
                p16 = (void*)(pSection + nOffset);
                *p16 += (WORD)(pSymbols[pReloc->SymbolTableIndex].Value + iOffset);
                break;

            case 128:
                p32 = (void*)(pSection + nOffset);
                *p32 += (DWORD)(pSymbols[pReloc->SymbolTableIndex].Value + iOffset);
                break;

            default:
                printf("Unknown relocation type %u, address 0x%x\n",
                       pReloc->Type, (unsigned)pReloc->VirtualAddress);
        }

        pReloc++;
    }
}
