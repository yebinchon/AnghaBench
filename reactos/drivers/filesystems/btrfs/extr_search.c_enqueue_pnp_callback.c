
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int Length; int MaximumLength; int * Buffer; } ;
struct TYPE_8__ {scalar_t__ work_item; int func; TYPE_1__ name; int DriverObject; } ;
typedef TYPE_2__ pnp_callback_context ;
typedef int pnp_callback ;
struct TYPE_9__ {int Length; int Buffer; } ;
typedef TYPE_3__* PUNICODE_STRING ;
typedef scalar_t__ PIO_WORKITEM ;
typedef int PDRIVER_OBJECT ;


 int ALLOC_TAG ;
 int DelayedWorkQueue ;
 int ERR (char*) ;
 void* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePool (TYPE_2__*) ;
 scalar_t__ IoAllocateWorkItem (int ) ;
 int IoFreeWorkItem (scalar_t__) ;
 int IoQueueWorkItem (scalar_t__,int ,int ,TYPE_2__*) ;
 int PagedPool ;
 int RtlCopyMemory (int *,int ,int) ;
 int do_pnp_callback ;
 int master_devobj ;

__attribute__((used)) static void enqueue_pnp_callback(PDRIVER_OBJECT DriverObject, PUNICODE_STRING name, pnp_callback func) {
    PIO_WORKITEM work_item;
    pnp_callback_context* context;

    work_item = IoAllocateWorkItem(master_devobj);
    if (!work_item) {
        ERR("out of memory\n");
        return;
    }

    context = ExAllocatePoolWithTag(PagedPool, sizeof(pnp_callback_context), ALLOC_TAG);

    if (!context) {
        ERR("out of memory\n");
        IoFreeWorkItem(work_item);
        return;
    }

    context->DriverObject = DriverObject;

    if (name->Length > 0) {
        context->name.Buffer = ExAllocatePoolWithTag(PagedPool, name->Length, ALLOC_TAG);
        if (!context->name.Buffer) {
            ERR("out of memory\n");
            ExFreePool(context);
            IoFreeWorkItem(work_item);
            return;
        }

        RtlCopyMemory(context->name.Buffer, name->Buffer, name->Length);
        context->name.Length = context->name.MaximumLength = name->Length;
    } else {
        context->name.Length = context->name.MaximumLength = 0;
        context->name.Buffer = ((void*)0);
    }

    context->func = func;
    context->work_item = work_item;

    IoQueueWorkItem(work_item, do_pnp_callback, DelayedWorkQueue, context);
}
