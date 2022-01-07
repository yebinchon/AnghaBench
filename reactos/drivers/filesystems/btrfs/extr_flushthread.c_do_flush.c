
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tree_lock; int readonly; scalar_t__ need_write; } ;
typedef TYPE_1__ device_extension ;
typedef int NTSTATUS ;


 int ERR (char*,int ) ;
 int ExAcquireResourceExclusiveLite (int *,int) ;
 int ExReleaseResourceLite (int *) ;
 int NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int do_write (TYPE_1__*,int *) ;
 int free_trees (TYPE_1__*) ;

__attribute__((used)) static void do_flush(device_extension* Vcb) {
    NTSTATUS Status;

    ExAcquireResourceExclusiveLite(&Vcb->tree_lock, 1);

    if (Vcb->need_write && !Vcb->readonly)
        Status = do_write(Vcb, ((void*)0));
    else
        Status = STATUS_SUCCESS;

    free_trees(Vcb);

    if (!NT_SUCCESS(Status))
        ERR("do_write returned %08x\n", Status);

    ExReleaseResourceLite(&Vcb->tree_lock);
}
