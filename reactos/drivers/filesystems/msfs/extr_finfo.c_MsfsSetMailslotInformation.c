
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * ReadTimeout; } ;
struct TYPE_5__ {int TimeOut; } ;
typedef int* PULONG ;
typedef TYPE_1__* PMSFS_FCB ;
typedef TYPE_2__* PFILE_MAILSLOT_SET_INFORMATION ;
typedef int NTSTATUS ;
typedef int FILE_MAILSLOT_SET_INFORMATION ;


 int STATUS_BUFFER_OVERFLOW ;
 int STATUS_SUCCESS ;

__attribute__((used)) static NTSTATUS
MsfsSetMailslotInformation(PMSFS_FCB Fcb,
                           PFILE_MAILSLOT_SET_INFORMATION Buffer,
                           PULONG BufferLength)
{
    if (*BufferLength < sizeof(FILE_MAILSLOT_SET_INFORMATION))
        return STATUS_BUFFER_OVERFLOW;

    Fcb->TimeOut = *Buffer->ReadTimeout;

    return STATUS_SUCCESS;
}
