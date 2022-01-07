
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * string; scalar_t__ present; } ;


 size_t OPT_PRINT_NUMBER ;
 char TOLOWER_ASC (int ) ;
 TYPE_1__* printer_opts ;

int
prt_use_number()
{
    return (printer_opts[OPT_PRINT_NUMBER].present
     && TOLOWER_ASC(printer_opts[OPT_PRINT_NUMBER].string[0]) == 'y');
}
