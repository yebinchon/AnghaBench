
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINTN ;
typedef int UINT64 ;
struct TYPE_6__ {TYPE_2__* ConOut; } ;
struct TYPE_5__ {TYPE_1__* Mode; int QueryMode; } ;
struct TYPE_4__ {int Mode; } ;
typedef int EFI_STATUS ;


 scalar_t__ EFI_ERROR (int ) ;
 TYPE_3__* ST ;
 int SYSTEM_FONT_HEIGHT ;
 int SYSTEM_FONT_WIDTH ;
 int uefi_call_wrapper (int ,int,TYPE_2__*,int ,int*,int*) ;

__attribute__((used)) static UINT64 text_area_from_font_size(void) {
        EFI_STATUS err;
        UINT64 text_area;
        UINTN rows, columns;

        err = uefi_call_wrapper(ST->ConOut->QueryMode, 4, ST->ConOut, ST->ConOut->Mode->Mode, &columns, &rows);
        if (EFI_ERROR(err)) {
                columns = 80;
                rows = 25;
        }

        text_area = SYSTEM_FONT_WIDTH * SYSTEM_FONT_HEIGHT * (UINT64)rows * (UINT64)columns;

        return text_area;
}
