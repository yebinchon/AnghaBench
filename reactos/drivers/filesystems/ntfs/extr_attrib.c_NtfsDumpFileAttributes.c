
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PNTFS_ATTR_RECORD ;
typedef int PFILE_RECORD_HEADER ;
typedef int PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef int FIND_ATTR_CONTXT ;


 int FALSE ;
 int FindCloseAttribute (int *) ;
 int FindFirstAttribute (int *,int ,int ,int ,int *) ;
 int FindNextAttribute (int *,int *) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtfsDumpAttribute (int ,int ) ;

VOID
NtfsDumpFileAttributes(PDEVICE_EXTENSION Vcb,
                       PFILE_RECORD_HEADER FileRecord)
{
    NTSTATUS Status;
    FIND_ATTR_CONTXT Context;
    PNTFS_ATTR_RECORD Attribute;

    Status = FindFirstAttribute(&Context, Vcb, FileRecord, FALSE, &Attribute);
    while (NT_SUCCESS(Status))
    {
        NtfsDumpAttribute(Vcb, Attribute);

        Status = FindNextAttribute(&Context, &Attribute);
    }

    FindCloseAttribute(&Context);
}
