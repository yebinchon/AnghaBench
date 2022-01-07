
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int lock; int event; int job_list; } ;
struct TYPE_8__ {TYPE_1__ calcthreads; } ;
typedef TYPE_2__ device_extension ;
struct TYPE_9__ {int refcount; int list_entry; int event; scalar_t__ done; scalar_t__ pos; int * csum; int sectors; int * data; } ;
typedef TYPE_3__ calc_job ;
typedef int NTSTATUS ;


 int ALLOC_TAG ;
 int ERR (char*) ;
 int ExAcquireResourceExclusiveLite (int *,int) ;
 TYPE_3__* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExReleaseResourceLite (int *) ;
 int InsertTailList (int *,int *) ;
 int KeClearEvent (int *) ;
 int KeInitializeEvent (int *,int ,int) ;
 int KeSetEvent (int *,int ,int) ;
 int NonPagedPool ;
 int NotificationEvent ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;

NTSTATUS add_calc_job(device_extension* Vcb, uint8_t* data, uint32_t sectors, uint32_t* csum, calc_job** pcj) {
    calc_job* cj;

    cj = ExAllocatePoolWithTag(NonPagedPool, sizeof(calc_job), ALLOC_TAG);
    if (!cj) {
        ERR("out of memory\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    cj->data = data;
    cj->sectors = sectors;
    cj->csum = csum;
    cj->pos = 0;
    cj->done = 0;
    cj->refcount = 1;
    KeInitializeEvent(&cj->event, NotificationEvent, 0);

    ExAcquireResourceExclusiveLite(&Vcb->calcthreads.lock, 1);

    InsertTailList(&Vcb->calcthreads.job_list, &cj->list_entry);

    KeSetEvent(&Vcb->calcthreads.event, 0, 0);
    KeClearEvent(&Vcb->calcthreads.event);

    ExReleaseResourceLite(&Vcb->calcthreads.lock);

    *pcj = cj;

    return STATUS_SUCCESS;
}
