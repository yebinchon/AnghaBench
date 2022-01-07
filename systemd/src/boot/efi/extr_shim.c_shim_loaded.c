
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ShimLock {int dummy; } ;
typedef int VOID ;
struct TYPE_2__ {int LocateProtocol; } ;
typedef int EFI_GUID ;
typedef int BOOLEAN ;


 TYPE_1__* BS ;
 scalar_t__ EFI_SUCCESS ;
 int shim_lock_guid ;
 scalar_t__ uefi_call_wrapper (int ,int,int *,int *,int **) ;

BOOLEAN shim_loaded(void) {
        struct ShimLock *shim_lock;

        return uefi_call_wrapper(BS->LocateProtocol, 3, (EFI_GUID*) &shim_lock_guid, ((void*)0), (VOID**) &shim_lock) == EFI_SUCCESS;
}
