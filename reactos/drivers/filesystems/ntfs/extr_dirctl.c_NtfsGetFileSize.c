
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long long ULONGLONG ;
typedef int ULONG ;
struct TYPE_4__ {int pRecord; } ;
typedef unsigned long long* PULONGLONG ;
typedef TYPE_1__* PNTFS_ATTR_CONTEXT ;
typedef int PFILE_RECORD_HEADER ;
typedef int PDEVICE_EXTENSION ;
typedef int PCWSTR ;
typedef int NTSTATUS ;


 unsigned long long AttributeAllocatedLength (int ) ;
 int AttributeData ;
 unsigned long long AttributeDataLength (int ) ;
 int FindAttribute (int ,int ,int ,int ,int ,TYPE_1__**,int *) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int ReleaseAttributeContext (TYPE_1__*) ;

ULONGLONG
NtfsGetFileSize(PDEVICE_EXTENSION DeviceExt,
                PFILE_RECORD_HEADER FileRecord,
                PCWSTR Stream,
                ULONG StreamLength,
                PULONGLONG AllocatedSize)
{
    ULONGLONG Size = 0ULL;
    ULONGLONG Allocated = 0ULL;
    NTSTATUS Status;
    PNTFS_ATTR_CONTEXT DataContext;

    Status = FindAttribute(DeviceExt, FileRecord, AttributeData, Stream, StreamLength, &DataContext, ((void*)0));
    if (NT_SUCCESS(Status))
    {
        Size = AttributeDataLength(DataContext->pRecord);
        Allocated = AttributeAllocatedLength(DataContext->pRecord);
        ReleaseAttributeContext(DataContext);
    }

    if (AllocatedSize != ((void*)0)) *AllocatedSize = Allocated;

    return Size;
}
