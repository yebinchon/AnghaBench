
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;


 scalar_t__ DelayedWorkQueue ;
 int ERR (char*,int ) ;
 int ExInitializeWorkItem (int *,int ,int ) ;
 int NT_SUCCESS (int ) ;
 int REG_NOTIFY_CHANGE_LAST_SET ;
 int ZwNotifyChangeKey (int ,int *,int ,int ,int *,int ,int,int *,int ,int) ;
 int registry_work_item ;
 int wqi ;

void watch_registry(HANDLE regh) {
    NTSTATUS Status;
    IO_STATUS_BLOCK iosb;

    ExInitializeWorkItem(&wqi, registry_work_item, regh);

    Status = ZwNotifyChangeKey(regh, ((void*)0), (PVOID)&wqi, (PVOID)DelayedWorkQueue, &iosb, REG_NOTIFY_CHANGE_LAST_SET, 1, ((void*)0), 0, 1);
    if (!NT_SUCCESS(Status))
        ERR("ZwNotifyChangeKey returned %08x\n", Status);
}
