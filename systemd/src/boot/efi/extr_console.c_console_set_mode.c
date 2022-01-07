
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef enum console_mode_change_type { ____Placeholder_console_mode_change_type } console_mode_change_type ;
typedef scalar_t__ UINTN ;
struct TYPE_6__ {TYPE_2__* ConOut; } ;
struct TYPE_5__ {TYPE_1__* Mode; } ;
struct TYPE_4__ {scalar_t__ MaxMode; } ;
typedef int EFI_STATUS ;


 int CONSOLE_MODE_AUTO ;
 int CONSOLE_MODE_MAX ;
 TYPE_3__* ST ;
 int change_mode (scalar_t__) ;
 int mode_auto (scalar_t__*) ;

EFI_STATUS console_set_mode(UINTN *mode, enum console_mode_change_type how) {
        if (how == CONSOLE_MODE_AUTO)
                return mode_auto(mode);

        if (how == CONSOLE_MODE_MAX) {

                if (ST->ConOut->Mode->MaxMode > 0)
                        *mode = ST->ConOut->Mode->MaxMode-1;
                else
                        *mode = 0;
        }

        return change_mode(*mode);
}
