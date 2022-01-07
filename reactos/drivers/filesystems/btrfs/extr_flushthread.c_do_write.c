
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int readonly; int root_file; } ;
typedef TYPE_1__ device_extension ;
typedef int PIRP ;
typedef int NTSTATUS ;
typedef int LIST_ENTRY ;


 int ERR (char*,int ) ;
 int FSRTL_VOLUME_FORCED_CLOSED ;
 int FsRtlNotifyVolumeEvent (int ,int ) ;
 int InitializeListHead (int *) ;
 int NT_SUCCESS (int ) ;
 int clear_rollback (int *) ;
 int do_rollback (TYPE_1__*,int *) ;
 int do_write2 (TYPE_1__*,int ,int *) ;

NTSTATUS do_write(device_extension* Vcb, PIRP Irp) {
    LIST_ENTRY rollback;
    NTSTATUS Status;

    InitializeListHead(&rollback);

    Status = do_write2(Vcb, Irp, &rollback);

    if (!NT_SUCCESS(Status)) {
        ERR("do_write2 returned %08x, dropping into readonly mode\n", Status);
        Vcb->readonly = 1;
        FsRtlNotifyVolumeEvent(Vcb->root_file, FSRTL_VOLUME_FORCED_CLOSED);
        do_rollback(Vcb, &rollback);
    } else
        clear_rollback(&rollback);

    return Status;
}
