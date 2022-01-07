
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t datalen; int buffer_event; int * data; } ;
typedef TYPE_2__ send_context ;
struct TYPE_10__ {int send_load_lock; } ;
typedef TYPE_3__ device_extension ;
struct TYPE_11__ {TYPE_1__* send; int send_status; } ;
typedef TYPE_4__ ccb ;
typedef size_t ULONG_PTR ;
typedef size_t ULONG ;
struct TYPE_12__ {TYPE_4__* FsContext2; } ;
struct TYPE_8__ {int cleared_event; scalar_t__ context; } ;
typedef TYPE_5__* PFILE_OBJECT ;
typedef int NTSTATUS ;
typedef int KPROCESSOR_MODE ;


 int ExAcquireResourceExclusiveLite (int *,int) ;
 int ExReleaseResourceLite (int *) ;
 int Executive ;
 int KeClearEvent (int *) ;
 int KeSetEvent (int *,int ,int) ;
 int KeWaitForSingleObject (int *,int ,int ,int,int *) ;
 int KernelMode ;
 int NT_SUCCESS (int ) ;
 int RtlConvertLongToLuid (int ) ;
 int RtlCopyMemory (void*,int *,int ) ;
 int RtlMoveMemory (int *,int *,size_t) ;
 int SE_MANAGE_VOLUME_PRIVILEGE ;
 int STATUS_END_OF_FILE ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_PRIVILEGE_NOT_HELD ;
 int STATUS_SUCCESS ;
 int SeSinglePrivilegeCheck (int ,int ) ;
 int min (size_t,size_t) ;

NTSTATUS read_send_buffer(device_extension* Vcb, PFILE_OBJECT FileObject, void* data, ULONG datalen, ULONG_PTR* retlen, KPROCESSOR_MODE processor_mode) {
    ccb* ccb;
    send_context* context;

    ccb = FileObject ? FileObject->FsContext2 : ((void*)0);
    if (!ccb)
        return STATUS_INVALID_PARAMETER;

    if (!SeSinglePrivilegeCheck(RtlConvertLongToLuid(SE_MANAGE_VOLUME_PRIVILEGE), processor_mode))
        return STATUS_PRIVILEGE_NOT_HELD;

    ExAcquireResourceExclusiveLite(&Vcb->send_load_lock, 1);

    if (!ccb->send) {
        ExReleaseResourceLite(&Vcb->send_load_lock);
        return !NT_SUCCESS(ccb->send_status) ? ccb->send_status : STATUS_END_OF_FILE;
    }

    context = (send_context*)ccb->send->context;

    KeWaitForSingleObject(&context->buffer_event, Executive, KernelMode, 0, ((void*)0));

    if (datalen == 0) {
        ExReleaseResourceLite(&Vcb->send_load_lock);
        return STATUS_SUCCESS;
    }

    RtlCopyMemory(data, context->data, min(datalen, context->datalen));

    if (datalen < context->datalen) {
        *retlen = datalen;
        RtlMoveMemory(context->data, &context->data[datalen], context->datalen - datalen);
        context->datalen -= datalen;
        ExReleaseResourceLite(&Vcb->send_load_lock);
    } else {
        *retlen = context->datalen;
        context->datalen = 0;
        ExReleaseResourceLite(&Vcb->send_load_lock);

        KeClearEvent(&context->buffer_event);
        KeSetEvent(&ccb->send->cleared_event, 0, 0);
    }

    return STATUS_SUCCESS;
}
