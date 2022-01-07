
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int RequestorMode; } ;
typedef TYPE_1__* PIRP ;
typedef int NTSTATUS ;


 int ERR (char*) ;
 int RtlConvertLongToLuid (int ) ;
 int SE_LOAD_DRIVER_PRIVILEGE ;
 int STATUS_PRIVILEGE_NOT_HELD ;
 int STATUS_SUCCESS ;
 int SeSinglePrivilegeCheck (int ,int ) ;
 int do_shutdown (TYPE_1__*) ;

__attribute__((used)) static NTSTATUS ioctl_unload(PIRP Irp) {
    if (!SeSinglePrivilegeCheck(RtlConvertLongToLuid(SE_LOAD_DRIVER_PRIVILEGE), Irp->RequestorMode)) {
        ERR("insufficient privileges\n");
        return STATUS_PRIVILEGE_NOT_HELD;
    }

    do_shutdown(Irp);

    return STATUS_SUCCESS;
}
