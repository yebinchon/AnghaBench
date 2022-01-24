#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t datalen; int /*<<< orphan*/  buffer_event; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ send_context ;
struct TYPE_10__ {int /*<<< orphan*/  send_load_lock; } ;
typedef  TYPE_3__ device_extension ;
struct TYPE_11__ {TYPE_1__* send; int /*<<< orphan*/  send_status; } ;
typedef  TYPE_4__ ccb ;
typedef  size_t ULONG_PTR ;
typedef  size_t ULONG ;
struct TYPE_12__ {TYPE_4__* FsContext2; } ;
struct TYPE_8__ {int /*<<< orphan*/  cleared_event; scalar_t__ context; } ;
typedef  TYPE_5__* PFILE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  KPROCESSOR_MODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Executive ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KernelMode ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  SE_MANAGE_VOLUME_PRIVILEGE ; 
 int /*<<< orphan*/  STATUS_END_OF_FILE ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_PRIVILEGE_NOT_HELD ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (size_t,size_t) ; 

NTSTATUS FUNC11(device_extension* Vcb, PFILE_OBJECT FileObject, void* data, ULONG datalen, ULONG_PTR* retlen, KPROCESSOR_MODE processor_mode) {
    ccb* ccb;
    send_context* context;

    ccb = FileObject ? FileObject->FsContext2 : NULL;
    if (!ccb)
        return STATUS_INVALID_PARAMETER;

    if (!FUNC9(FUNC6(SE_MANAGE_VOLUME_PRIVILEGE), processor_mode))
        return STATUS_PRIVILEGE_NOT_HELD;

    FUNC0(&Vcb->send_load_lock, true);

    if (!ccb->send) {
        FUNC1(&Vcb->send_load_lock);
        return !FUNC5(ccb->send_status) ? ccb->send_status : STATUS_END_OF_FILE;
    }

    context = (send_context*)ccb->send->context;

    FUNC4(&context->buffer_event, Executive, KernelMode, false, NULL);

    if (datalen == 0) {
        FUNC1(&Vcb->send_load_lock);
        return STATUS_SUCCESS;
    }

    FUNC7(data, context->data, FUNC10(datalen, context->datalen));

    if (datalen < context->datalen) { // not empty yet
        *retlen = datalen;
        FUNC8(context->data, &context->data[datalen], context->datalen - datalen);
        context->datalen -= datalen;
        FUNC1(&Vcb->send_load_lock);
    } else {
        *retlen = context->datalen;
        context->datalen = 0;
        FUNC1(&Vcb->send_load_lock);

        FUNC2(&context->buffer_event);
        FUNC3(&ccb->send->cleared_event, 0, false);
    }

    return STATUS_SUCCESS;
}