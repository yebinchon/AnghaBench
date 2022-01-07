
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int FirstSft; } ;
struct TYPE_3__ {size_t NumDescriptors; int Link; int * FileDescriptors; } ;
typedef TYPE_1__* PDOS_SFT ;
typedef int * PDOS_FILE_DESCRIPTOR ;
typedef int DWORD ;
typedef size_t BYTE ;


 int FAR_POINTER (int ) ;
 int LOWORD (int ) ;
 TYPE_2__* SysVars ;

PDOS_FILE_DESCRIPTOR DosGetFileDescriptor(BYTE Id)
{
    DWORD CurrentSft = SysVars->FirstSft;

    while (LOWORD(CurrentSft) != 0xFFFF)
    {
        PDOS_SFT Sft = (PDOS_SFT)FAR_POINTER(CurrentSft);


        if (Id <= Sft->NumDescriptors) return &Sft->FileDescriptors[Id];


        Id -= Sft->NumDescriptors;
        CurrentSft = Sft->Link;
    }


    return ((void*)0);
}
