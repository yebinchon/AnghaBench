
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef int UINTN ;
typedef int UINT32 ;
struct TYPE_2__ {int SetVariable; } ;
typedef int EFI_STATUS ;
typedef int EFI_GUID ;
typedef int CHAR16 ;
typedef scalar_t__ BOOLEAN ;


 int EFI_VARIABLE_BOOTSERVICE_ACCESS ;
 int EFI_VARIABLE_NON_VOLATILE ;
 int EFI_VARIABLE_RUNTIME_ACCESS ;
 TYPE_1__* RT ;
 int uefi_call_wrapper (int ,int,int *,int *,int,int ,int *) ;

EFI_STATUS efivar_set_raw(const EFI_GUID *vendor, const CHAR16 *name, const VOID *buf, UINTN size, BOOLEAN persistent) {
        UINT32 flags;

        flags = EFI_VARIABLE_BOOTSERVICE_ACCESS|EFI_VARIABLE_RUNTIME_ACCESS;
        if (persistent)
                flags |= EFI_VARIABLE_NON_VOLATILE;

        return uefi_call_wrapper(RT->SetVariable, 5, (CHAR16*) name, (EFI_GUID *)vendor, flags, size, (VOID*) buf);
}
