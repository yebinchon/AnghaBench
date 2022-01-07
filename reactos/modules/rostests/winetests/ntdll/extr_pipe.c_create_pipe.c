
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int attr ;
typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_6__ {int QuadPart; } ;
struct TYPE_5__ {int Length; int Attributes; int * SecurityQualityOfService; int * SecurityDescriptor; int * ObjectName; scalar_t__ RootDirectory; } ;
typedef int PHANDLE ;
typedef TYPE_1__ OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int IO_STATUS_BLOCK ;


 int FILE_READ_ATTRIBUTES ;
 int SYNCHRONIZE ;
 int pNtCreateNamedPipeFile (int ,int,TYPE_1__*,int *,int ,int,int ,int,int ,int ,int,int,int,TYPE_2__*) ;
 int pRtlInitUnicodeString (int *,int ) ;
 int testpipe_nt ;

__attribute__((used)) static NTSTATUS create_pipe(PHANDLE handle, ULONG sharing, ULONG options)
{
    IO_STATUS_BLOCK iosb;
    OBJECT_ATTRIBUTES attr;
    UNICODE_STRING name;
    LARGE_INTEGER timeout;
    NTSTATUS res;

    pRtlInitUnicodeString(&name, testpipe_nt);

    attr.Length = sizeof(attr);
    attr.RootDirectory = 0;
    attr.ObjectName = &name;
    attr.Attributes = 0x40;
    attr.SecurityDescriptor = ((void*)0);
    attr.SecurityQualityOfService = ((void*)0);

    timeout.QuadPart = -100000000;

    res = pNtCreateNamedPipeFile(handle, FILE_READ_ATTRIBUTES | SYNCHRONIZE, &attr, &iosb, sharing, 2 ,
                                 options, 1, 0, 0, 0xFFFFFFFF, 500, 500, &timeout);
    return res;
}
