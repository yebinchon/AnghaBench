
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* item; } ;
typedef TYPE_3__ traverse_ptr ;
struct TYPE_13__ {int parent; TYPE_8__* Vcb; int root; TYPE_1__* send; int buffer_event; } ;
typedef TYPE_4__ send_context ;
struct TYPE_14__ {int tree_lock; } ;
struct TYPE_11__ {int key; } ;
struct TYPE_10__ {scalar_t__ cancelling; int cleared_event; } ;
typedef int NTSTATUS ;
typedef int KEY ;


 int ERR (char*,...) ;
 int ExAcquireResourceSharedLite (int *,int) ;
 int ExReleaseResourceLite (int *) ;
 int Executive ;
 int KeClearEvent (int *) ;
 int KeSetEvent (int *,int ,int) ;
 int KeWaitForSingleObject (int *,int ,int ,int,int *) ;
 int KernelMode ;
 int NT_SUCCESS (int ) ;
 int STATUS_INTERNAL_ERROR ;
 int STATUS_SUCCESS ;
 int find_item (TYPE_8__*,int ,TYPE_3__*,int *,int,int *) ;
 scalar_t__ keycmp (int ,int ) ;

__attribute__((used)) static NTSTATUS wait_for_flush(send_context* context, traverse_ptr* tp1, traverse_ptr* tp2) {
    NTSTATUS Status;
    KEY key1, key2;

    if (tp1)
        key1 = tp1->item->key;

    if (tp2)
        key2 = tp2->item->key;

    ExReleaseResourceLite(&context->Vcb->tree_lock);

    KeClearEvent(&context->send->cleared_event);
    KeSetEvent(&context->buffer_event, 0, 1);
    KeWaitForSingleObject(&context->send->cleared_event, Executive, KernelMode, 0, ((void*)0));

    ExAcquireResourceSharedLite(&context->Vcb->tree_lock, 1);

    if (context->send->cancelling)
        return STATUS_SUCCESS;

    if (tp1) {
        Status = find_item(context->Vcb, context->root, tp1, &key1, 0, ((void*)0));
        if (!NT_SUCCESS(Status)) {
            ERR("find_item returned %08x\n", Status);
            return Status;
        }

        if (keycmp(tp1->item->key, key1)) {
            ERR("readonly subvolume changed\n");
            return STATUS_INTERNAL_ERROR;
        }
    }

    if (tp2) {
        Status = find_item(context->Vcb, context->parent, tp2, &key2, 0, ((void*)0));
        if (!NT_SUCCESS(Status)) {
            ERR("find_item returned %08x\n", Status);
            return Status;
        }

        if (keycmp(tp2->item->key, key2)) {
            ERR("readonly subvolume changed\n");
            return STATUS_INTERNAL_ERROR;
        }
    }

    return STATUS_SUCCESS;
}
