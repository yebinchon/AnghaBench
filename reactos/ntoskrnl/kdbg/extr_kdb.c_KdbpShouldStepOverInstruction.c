
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef int ULONG ;
typedef int UCHAR ;
typedef int PVOID ;
typedef int Mem ;
typedef int BOOLEAN ;


 int FALSE ;
 int KdbpPrint (char*,scalar_t__) ;
 int KdbpSafeReadMemory (int*,int ,int) ;
 int NT_SUCCESS (int ) ;
 int TRUE ;

BOOLEAN
KdbpShouldStepOverInstruction(
    ULONG_PTR Eip)
{
    UCHAR Mem[3];
    ULONG i = 0;

    if (!NT_SUCCESS(KdbpSafeReadMemory(Mem, (PVOID)Eip, sizeof (Mem))))
    {
        KdbpPrint("Couldn't access memory at 0x%p\n", Eip);
        return FALSE;
    }


    while ((i < sizeof (Mem)) && (Mem[i] == 0x66 || Mem[i] == 0x67))
        i++;

    if (i == sizeof (Mem))
        return FALSE;

    if (Mem[i] == 0xE8 || Mem[i] == 0x9A || Mem[i] == 0xF2 || Mem[i] == 0xF3 ||
        (((i + 1) < sizeof (Mem)) && Mem[i] == 0xFF && (Mem[i+1] & 0x38) == 0x10))
    {
        return TRUE;
    }

    return FALSE;
}
