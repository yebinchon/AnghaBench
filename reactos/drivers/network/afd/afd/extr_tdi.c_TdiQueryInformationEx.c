
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* ULONG ;
struct TYPE_7__ {void* tei_instance; void* tei_entity; } ;
struct TYPE_6__ {void* toi_id; void* toi_type; void* toi_class; TYPE_2__ toi_entity; } ;
struct TYPE_8__ {TYPE_1__ ID; } ;
typedef TYPE_3__ TCP_REQUEST_QUERY_INFORMATION_EX ;
typedef int PVOID ;
typedef int * PULONG ;
typedef int PFILE_OBJECT ;
typedef int NTSTATUS ;


 int IOCTL_TCP_QUERY_INFORMATION_EX ;
 int RtlZeroMemory (TYPE_3__*,int) ;
 int TdiQueryDeviceControl (int ,int ,TYPE_3__*,int,int ,int ,int *) ;

NTSTATUS TdiQueryInformationEx(
    PFILE_OBJECT FileObject,
    ULONG Entity,
    ULONG Instance,
    ULONG Class,
    ULONG Type,
    ULONG Id,
    PVOID OutputBuffer,
    PULONG OutputLength)
{
    TCP_REQUEST_QUERY_INFORMATION_EX QueryInfo;

    RtlZeroMemory(&QueryInfo, sizeof(TCP_REQUEST_QUERY_INFORMATION_EX));
    QueryInfo.ID.toi_entity.tei_entity = Entity;
    QueryInfo.ID.toi_entity.tei_instance = Instance;
    QueryInfo.ID.toi_class = Class;
    QueryInfo.ID.toi_type = Type;
    QueryInfo.ID.toi_id = Id;

    return TdiQueryDeviceControl(FileObject,
                                 IOCTL_TCP_QUERY_INFORMATION_EX,
                                 &QueryInfo,
                                 sizeof(TCP_REQUEST_QUERY_INFORMATION_EX),
                                 OutputBuffer,
                                 *OutputLength,
                                 OutputLength);
}
