
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int UserBuffer; int * MdlAddress; } ;
typedef int PVOID ;
typedef TYPE_1__* PIRP ;
typedef scalar_t__ BOOLEAN ;


 int HighPagePriority ;
 int MmGetSystemAddressForMdlSafe (int *,int ) ;
 int NormalPagePriority ;

PVOID
NtfsGetUserBuffer(PIRP Irp,
                  BOOLEAN Paging)
{
    if (Irp->MdlAddress != ((void*)0))
    {
        return MmGetSystemAddressForMdlSafe(Irp->MdlAddress, (Paging ? HighPagePriority : NormalPagePriority));
    }
    else
    {
        return Irp->UserBuffer;
    }
}
