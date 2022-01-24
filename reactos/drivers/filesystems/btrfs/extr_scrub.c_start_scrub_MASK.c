#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int stopping; int paused; scalar_t__ thread; int /*<<< orphan*/  event; int /*<<< orphan*/  error; } ;
struct TYPE_6__ {scalar_t__ thread; } ;
struct TYPE_8__ {TYPE_2__ scrub; scalar_t__ readonly; TYPE_1__ balance; scalar_t__ locked; } ;
typedef  TYPE_3__ device_extension ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  KPROCESSOR_MODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NotificationEvent ; 
 int /*<<< orphan*/  OBJ_KERNEL_HANDLE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SE_MANAGE_VOLUME_PRIVILEGE ; 
 int /*<<< orphan*/  STATUS_DEVICE_NOT_READY ; 
 int /*<<< orphan*/  STATUS_MEDIA_WRITE_PROTECTED ; 
 int /*<<< orphan*/  STATUS_PRIVILEGE_NOT_HELD ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  scrub_thread ; 

NTSTATUS FUNC8(device_extension* Vcb, KPROCESSOR_MODE processor_mode) {
    NTSTATUS Status;
    OBJECT_ATTRIBUTES oa;

    if (!FUNC6(FUNC5(SE_MANAGE_VOLUME_PRIVILEGE), processor_mode))
        return STATUS_PRIVILEGE_NOT_HELD;

    if (Vcb->locked) {
        FUNC7("cannot start scrub while locked\n");
        return STATUS_DEVICE_NOT_READY;
    }

    if (Vcb->balance.thread) {
        FUNC7("cannot start scrub while balance running\n");
        return STATUS_DEVICE_NOT_READY;
    }

    if (Vcb->scrub.thread) {
        FUNC7("scrub already running\n");
        return STATUS_DEVICE_NOT_READY;
    }

    if (Vcb->readonly)
        return STATUS_MEDIA_WRITE_PROTECTED;

    Vcb->scrub.stopping = false;
    Vcb->scrub.paused = false;
    Vcb->scrub.error = STATUS_SUCCESS;
    FUNC2(&Vcb->scrub.event, NotificationEvent, !Vcb->scrub.paused);

    FUNC1(&oa, NULL, OBJ_KERNEL_HANDLE, NULL, NULL);

    Status = FUNC4(&Vcb->scrub.thread, 0, &oa, NULL, NULL, scrub_thread, Vcb);
    if (!FUNC3(Status)) {
        FUNC0("PsCreateSystemThread returned %08x\n", Status);
        return Status;
    }

    return STATUS_SUCCESS;
}