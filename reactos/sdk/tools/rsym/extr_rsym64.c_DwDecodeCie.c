
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* ULONG ;
struct TYPE_3__ {int Length; char* Next; char Version; char* AugString; int AugStringLength; char* AugData; char* Instructions; int AugLength; int ReturnAddressRegister; int DataAlign; int CodeAlign; void* CieId; } ;
typedef TYPE_1__* PDW2CIE ;


 int DwDecodeSleb128 (int *,char*) ;
 int DwDecodeUleb128 (int *,char*) ;
 int strlen (char*) ;

unsigned long
DwDecodeCie(PDW2CIE Cie, char *pc)
{
    Cie->Length = *(ULONG*)pc;
    Cie->Next = pc + 4 + Cie->Length;
    Cie->CieId = *(ULONG*)(pc + 4);
    Cie->Version = pc[8];
    Cie->AugString = pc + 9;
    Cie->AugStringLength = strlen(Cie->AugString);
    pc = Cie->AugString + Cie->AugStringLength + 1;
    pc += DwDecodeUleb128(&Cie->CodeAlign, pc);
    pc += DwDecodeSleb128(&Cie->DataAlign, pc);
    pc += DwDecodeUleb128(&Cie->ReturnAddressRegister, pc);
    pc += DwDecodeUleb128(&Cie->AugLength, pc);
    Cie->AugData = pc;
    pc += Cie->AugLength;
    Cie->Instructions = pc;

    return Cie->Length + 4;
}
