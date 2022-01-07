
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIRP ;
typedef int BOOLEAN ;


 int FALSE ;
 int * IoGetTopLevelIrp () ;
 int IoSetTopLevelIrp (int ) ;
 int NTFS ;
 int TRACE_ (int ,char*) ;
 int TRUE ;

BOOLEAN
NtfsIsIrpTopLevel(PIRP Irp)
{
    BOOLEAN ReturnCode = FALSE;

    TRACE_(NTFS, "NtfsIsIrpTopLevel()\n");

    if (IoGetTopLevelIrp() == ((void*)0))
    {
        IoSetTopLevelIrp(Irp);
        ReturnCode = TRUE;
    }

    return ReturnCode;
}
