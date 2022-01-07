
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ handover_offset; int code32_start; } ;
struct boot_params {TYPE_1__ hdr; } ;
typedef int (* handover_f ) (int ,int ,struct boot_params*) ;
typedef int VOID ;
typedef scalar_t__ UINTN ;
typedef int EFI_HANDLE ;


 int ST ;

__attribute__((used)) static VOID linux_efi_handover(EFI_HANDLE image, struct boot_params *params) {
        handover_f handover;
        UINTN start = (UINTN)params->hdr.code32_start;


        asm volatile ("cli");
        start += 512;

        handover = (handover_f)(start + params->hdr.handover_offset);
        handover(image, ST, params);
}
