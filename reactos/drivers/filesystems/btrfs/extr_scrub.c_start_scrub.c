
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int stopping; int paused; scalar_t__ thread; int event; int error; } ;
struct TYPE_6__ {scalar_t__ thread; } ;
struct TYPE_8__ {TYPE_2__ scrub; scalar_t__ readonly; TYPE_1__ balance; scalar_t__ locked; } ;
typedef TYPE_3__ device_extension ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int KPROCESSOR_MODE ;


 int ERR (char*,int ) ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int KeInitializeEvent (int *,int ,int) ;
 int NT_SUCCESS (int ) ;
 int NotificationEvent ;
 int OBJ_KERNEL_HANDLE ;
 int PsCreateSystemThread (scalar_t__*,int ,int *,int *,int *,int ,TYPE_3__*) ;
 int RtlConvertLongToLuid (int ) ;
 int SE_MANAGE_VOLUME_PRIVILEGE ;
 int STATUS_DEVICE_NOT_READY ;
 int STATUS_MEDIA_WRITE_PROTECTED ;
 int STATUS_PRIVILEGE_NOT_HELD ;
 int STATUS_SUCCESS ;
 int SeSinglePrivilegeCheck (int ,int ) ;
 int WARN (char*) ;
 int scrub_thread ;

NTSTATUS start_scrub(device_extension* Vcb, KPROCESSOR_MODE processor_mode) {
    NTSTATUS Status;
    OBJECT_ATTRIBUTES oa;

    if (!SeSinglePrivilegeCheck(RtlConvertLongToLuid(SE_MANAGE_VOLUME_PRIVILEGE), processor_mode))
        return STATUS_PRIVILEGE_NOT_HELD;

    if (Vcb->locked) {
        WARN("cannot start scrub while locked\n");
        return STATUS_DEVICE_NOT_READY;
    }

    if (Vcb->balance.thread) {
        WARN("cannot start scrub while balance running\n");
        return STATUS_DEVICE_NOT_READY;
    }

    if (Vcb->scrub.thread) {
        WARN("scrub already running\n");
        return STATUS_DEVICE_NOT_READY;
    }

    if (Vcb->readonly)
        return STATUS_MEDIA_WRITE_PROTECTED;

    Vcb->scrub.stopping = 0;
    Vcb->scrub.paused = 0;
    Vcb->scrub.error = STATUS_SUCCESS;
    KeInitializeEvent(&Vcb->scrub.event, NotificationEvent, !Vcb->scrub.paused);

    InitializeObjectAttributes(&oa, ((void*)0), OBJ_KERNEL_HANDLE, ((void*)0), ((void*)0));

    Status = PsCreateSystemThread(&Vcb->scrub.thread, 0, &oa, ((void*)0), ((void*)0), scrub_thread, Vcb);
    if (!NT_SUCCESS(Status)) {
        ERR("PsCreateSystemThread returned %08x\n", Status);
        return Status;
    }

    return STATUS_SUCCESS;
}
