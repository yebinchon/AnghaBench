
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ShimLock {scalar_t__ (* shim_verify ) (int *,int ) ;} ;
typedef int VOID ;
typedef int UINT32 ;
struct TYPE_2__ {int LocateProtocol; } ;
typedef int EFI_GUID ;
typedef int BOOLEAN ;


 TYPE_1__* BS ;
 scalar_t__ EFI_SUCCESS ;
 int FALSE ;
 int shim_lock_guid ;
 scalar_t__ stub1 (int *,int ) ;
 scalar_t__ uefi_call_wrapper (int ,int,int *,int *,int **) ;

__attribute__((used)) static BOOLEAN shim_validate(VOID *data, UINT32 size) {
        struct ShimLock *shim_lock;

        if (!data)
                return FALSE;

        if (uefi_call_wrapper(BS->LocateProtocol, 3, (EFI_GUID*) &shim_lock_guid, ((void*)0), (VOID**) &shim_lock) != EFI_SUCCESS)
                return FALSE;

        if (!shim_lock)
                return FALSE;

        return shim_lock->shim_verify(data, size) == EFI_SUCCESS;
}
