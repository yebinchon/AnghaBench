
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINTN ;
struct TYPE_4__ {TYPE_1__* ConOut; } ;
struct TYPE_3__ {int SetMode; } ;
typedef int EFI_STATUS ;


 scalar_t__ EFI_ERROR (int ) ;
 TYPE_2__* ST ;
 int uefi_call_wrapper (int ,int,TYPE_1__*,int) ;

__attribute__((used)) static EFI_STATUS change_mode(UINTN mode) {
        EFI_STATUS err;

        err = uefi_call_wrapper(ST->ConOut->SetMode, 2, ST->ConOut, mode);



        if (EFI_ERROR(err) && mode == 1)
                uefi_call_wrapper(ST->ConOut->SetMode, 2, ST->ConOut, (UINTN)0);

        return err;
}
