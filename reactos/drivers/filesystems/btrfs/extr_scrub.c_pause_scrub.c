
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ QuadPart; } ;
struct TYPE_8__ {int QuadPart; } ;
struct TYPE_10__ {int paused; TYPE_2__ resume_time; TYPE_1__ duration; int event; int thread; } ;
struct TYPE_11__ {TYPE_3__ scrub; } ;
typedef TYPE_4__ device_extension ;
struct TYPE_12__ {scalar_t__ QuadPart; } ;
typedef int NTSTATUS ;
typedef TYPE_5__ LARGE_INTEGER ;
typedef int KPROCESSOR_MODE ;


 int KeClearEvent (int *) ;
 int KeQuerySystemTime (TYPE_5__*) ;
 int RtlConvertLongToLuid (int ) ;
 int SE_MANAGE_VOLUME_PRIVILEGE ;
 int STATUS_DEVICE_NOT_READY ;
 int STATUS_PRIVILEGE_NOT_HELD ;
 int STATUS_SUCCESS ;
 int SeSinglePrivilegeCheck (int ,int ) ;

NTSTATUS pause_scrub(device_extension* Vcb, KPROCESSOR_MODE processor_mode) {
    LARGE_INTEGER time;

    if (!SeSinglePrivilegeCheck(RtlConvertLongToLuid(SE_MANAGE_VOLUME_PRIVILEGE), processor_mode))
        return STATUS_PRIVILEGE_NOT_HELD;

    if (!Vcb->scrub.thread)
        return STATUS_DEVICE_NOT_READY;

    if (Vcb->scrub.paused)
        return STATUS_DEVICE_NOT_READY;

    Vcb->scrub.paused = 1;
    KeClearEvent(&Vcb->scrub.event);

    KeQuerySystemTime(&time);
    Vcb->scrub.duration.QuadPart += time.QuadPart - Vcb->scrub.resume_time.QuadPart;

    return STATUS_SUCCESS;
}
