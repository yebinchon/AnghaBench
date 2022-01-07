
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int ** DriverContext; } ;
struct TYPE_6__ {TYPE_1__ Overlay; } ;
struct TYPE_7__ {int * MdlAddress; TYPE_2__ Tail; } ;
typedef TYPE_3__* PIRP ;
typedef int PIO_STACK_LOCATION ;


 int ASSERT (int *) ;
 int ExFreePoolWithTag (int *,int ) ;
 int IoFreeMdl (int *) ;
 int MmGetMdlByteCount (int *) ;
 int MmUnlockPages (int *) ;
 int RtlCopyMemory (int *,int *,int ) ;
 int TAG_AFD_DATA_BUFFER ;
 int UNREFERENCED_PARAMETER (int ) ;

VOID UnlockRequest( PIRP Irp, PIO_STACK_LOCATION IrpSp )
{
    ASSERT(Irp->MdlAddress);
    ASSERT(Irp->Tail.Overlay.DriverContext[0]);

    UNREFERENCED_PARAMETER(IrpSp);


    if (Irp->Tail.Overlay.DriverContext[1] != ((void*)0))
    {
        RtlCopyMemory(Irp->Tail.Overlay.DriverContext[1],
                      Irp->Tail.Overlay.DriverContext[0],
                      MmGetMdlByteCount(Irp->MdlAddress));
    }

    ExFreePoolWithTag(Irp->Tail.Overlay.DriverContext[0], TAG_AFD_DATA_BUFFER);
    MmUnlockPages( Irp->MdlAddress );
    IoFreeMdl( Irp->MdlAddress );
    Irp->MdlAddress = ((void*)0);
}
