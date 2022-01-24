#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  event; int /*<<< orphan*/  job_list; } ;
struct TYPE_8__ {TYPE_1__ calcthreads; } ;
typedef  TYPE_2__ device_extension ;
struct TYPE_9__ {int refcount; int /*<<< orphan*/  list_entry; int /*<<< orphan*/  event; scalar_t__ done; scalar_t__ pos; int /*<<< orphan*/ * csum; int /*<<< orphan*/  sectors; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ calc_job ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  NotificationEvent ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

NTSTATUS FUNC8(device_extension* Vcb, uint8_t* data, uint32_t sectors, uint32_t* csum, calc_job** pcj) {
    calc_job* cj;

    cj = FUNC2(NonPagedPool, sizeof(calc_job), ALLOC_TAG);
    if (!cj) {
        FUNC0("out of memory\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    cj->data = data;
    cj->sectors = sectors;
    cj->csum = csum;
    cj->pos = 0;
    cj->done = 0;
    cj->refcount = 1;
    FUNC6(&cj->event, NotificationEvent, false);

    FUNC1(&Vcb->calcthreads.lock, true);

    FUNC4(&Vcb->calcthreads.job_list, &cj->list_entry);

    FUNC7(&Vcb->calcthreads.event, 0, false);
    FUNC5(&Vcb->calcthreads.event);

    FUNC3(&Vcb->calcthreads.lock);

    *pcj = cj;

    return STATUS_SUCCESS;
}