
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ MessagesAvailable; int NextMessageSize; int ReadTimeout; int MaximumMessageSize; } ;
struct TYPE_8__ {int Flink; } ;
struct TYPE_10__ {scalar_t__ MessageCount; int MessageListLock; TYPE_1__ MessageListHead; int TimeOut; int MaxMessageSize; } ;
struct TYPE_9__ {int Size; } ;
typedef int* PULONG ;
typedef TYPE_2__* PMSFS_MESSAGE ;
typedef TYPE_3__* PMSFS_FCB ;
typedef TYPE_4__* PFILE_MAILSLOT_QUERY_INFORMATION ;
typedef int NTSTATUS ;
typedef int KIRQL ;
typedef int FILE_MAILSLOT_QUERY_INFORMATION ;


 TYPE_2__* CONTAINING_RECORD (int ,int ,int ) ;
 int KeAcquireSpinLock (int *,int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 int MAILSLOT_NO_MESSAGE ;
 int MSFS_MESSAGE ;
 int MessageListEntry ;
 int STATUS_BUFFER_OVERFLOW ;
 int STATUS_SUCCESS ;

__attribute__((used)) static NTSTATUS
MsfsQueryMailslotInformation(PMSFS_FCB Fcb,
                             PFILE_MAILSLOT_QUERY_INFORMATION Buffer,
                             PULONG BufferLength)
{
    KIRQL oldIrql;

    if (*BufferLength < sizeof(FILE_MAILSLOT_QUERY_INFORMATION))
        return STATUS_BUFFER_OVERFLOW;

    Buffer->MaximumMessageSize = Fcb->MaxMessageSize;
    Buffer->ReadTimeout = Fcb->TimeOut;

    KeAcquireSpinLock(&Fcb->MessageListLock, &oldIrql);
    Buffer->MessagesAvailable = Fcb->MessageCount;
    if (Fcb->MessageCount == 0)
    {
        Buffer->NextMessageSize = MAILSLOT_NO_MESSAGE;
    }
    else
    {
        PMSFS_MESSAGE Message = CONTAINING_RECORD(Fcb->MessageListHead.Flink,
                                                  MSFS_MESSAGE,
                                                  MessageListEntry);
        Buffer->NextMessageSize = Message->Size;
    }
    KeReleaseSpinLock(&Fcb->MessageListLock, oldIrql);

    *BufferLength -= sizeof(FILE_MAILSLOT_QUERY_INFORMATION);

    return STATUS_SUCCESS;
}
