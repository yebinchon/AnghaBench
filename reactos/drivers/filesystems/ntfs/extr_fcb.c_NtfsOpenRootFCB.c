
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PNTFS_VCB ;
typedef int * PNTFS_FCB ;


 int * NtfsGrabFCBFromTable (int ,char*) ;
 int * NtfsMakeRootFCB (int ) ;

PNTFS_FCB
NtfsOpenRootFCB(PNTFS_VCB Vcb)
{
    PNTFS_FCB Fcb;

    Fcb = NtfsGrabFCBFromTable(Vcb, L"\\");
    if (Fcb == ((void*)0))
    {
        Fcb = NtfsMakeRootFCB(Vcb);
    }

    return Fcb;
}
