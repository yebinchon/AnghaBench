
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_6__ {int FirstSft; } ;
struct TYPE_5__ {size_t NumDescriptors; int Link; TYPE_1__* FileDescriptors; } ;
struct TYPE_4__ {scalar_t__ RefCount; int DeviceInfo; scalar_t__ Win32Handle; } ;
typedef TYPE_2__* PDOS_SFT ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BYTE ;


 int FAR_POINTER (int ) ;
 int FILE_INFO_DEVICE ;
 int LOWORD (int ) ;
 TYPE_3__* SysVars ;

BYTE DosFindWin32Descriptor(HANDLE Win32Handle)
{
    UINT i;
    BYTE Count = 0;
    DWORD CurrentSft = SysVars->FirstSft;

    while (LOWORD(CurrentSft) != 0xFFFF)
    {
        PDOS_SFT Sft = (PDOS_SFT)FAR_POINTER(CurrentSft);

        for (i = 0; i < Sft->NumDescriptors; i++)
        {
            if ((Sft->FileDescriptors[i].RefCount > 0)
                && !(Sft->FileDescriptors[i].DeviceInfo & FILE_INFO_DEVICE)
                && (Sft->FileDescriptors[i].Win32Handle == Win32Handle))
            {
                return Count;
            }

            Count++;
        }


        CurrentSft = Sft->Link;
    }


    return 0xFF;
}
