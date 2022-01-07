
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Stall; } ;
typedef int EFI_STATUS ;


 TYPE_1__* BS ;
 int EFI_OUT_OF_RESOURCES ;
 int Print (char*) ;
 int uefi_call_wrapper (int ,int,int) ;

EFI_STATUS log_oom(void) {
        Print(L"Out of memory.");
        (void) uefi_call_wrapper(BS->Stall, 1, 3 * 1000 * 1000);
        return EFI_OUT_OF_RESOURCES;
}
