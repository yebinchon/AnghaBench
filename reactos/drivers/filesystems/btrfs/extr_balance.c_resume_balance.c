
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int paused; int event; int thread; } ;
struct TYPE_5__ {TYPE_1__ balance; scalar_t__ readonly; } ;
typedef TYPE_2__ device_extension ;
typedef int NTSTATUS ;
typedef int KPROCESSOR_MODE ;


 int KeSetEvent (int *,int ,int) ;
 int RtlConvertLongToLuid (int ) ;
 int SE_MANAGE_VOLUME_PRIVILEGE ;
 int STATUS_DEVICE_NOT_READY ;
 int STATUS_MEDIA_WRITE_PROTECTED ;
 int STATUS_PRIVILEGE_NOT_HELD ;
 int STATUS_SUCCESS ;
 int SeSinglePrivilegeCheck (int ,int ) ;

NTSTATUS resume_balance(device_extension* Vcb, KPROCESSOR_MODE processor_mode) {
    if (!SeSinglePrivilegeCheck(RtlConvertLongToLuid(SE_MANAGE_VOLUME_PRIVILEGE), processor_mode))
        return STATUS_PRIVILEGE_NOT_HELD;

    if (!Vcb->balance.thread)
        return STATUS_DEVICE_NOT_READY;

    if (!Vcb->balance.paused)
        return STATUS_DEVICE_NOT_READY;

    if (Vcb->readonly)
        return STATUS_MEDIA_WRITE_PROTECTED;

    Vcb->balance.paused = 0;
    KeSetEvent(&Vcb->balance.event, 0, 0);

    return STATUS_SUCCESS;
}
