
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; scalar_t__ style; scalar_t__ distance; } ;
typedef TYPE_1__ RofiDistance ;


 scalar_t__ ROFI_HL_DASH ;
 scalar_t__ ROFI_PU_CH ;
 scalar_t__ ROFI_PU_PERCENT ;
 scalar_t__ ROFI_PU_PX ;
 int fputs (char*,int ) ;
 int printf (char*,...) ;
 int printf_double (scalar_t__) ;
 int stdout ;

__attribute__((used)) static void rofi_theme_print_distance ( RofiDistance d )
{
    if ( d.type == ROFI_PU_PX ) {
        printf ( "%upx ", (unsigned int) d.distance );
    }
    else if ( d.type == ROFI_PU_PERCENT ) {
        printf_double ( d.distance );
        fputs ( "%% ", stdout );
    }
    else if ( d.type == ROFI_PU_CH ) {
        printf_double ( d.distance );
        fputs ( "ch ", stdout );
    }
    else {
        printf_double ( d.distance );
        fputs ( "em ", stdout );
    }
    if ( d.style == ROFI_HL_DASH ) {
        printf ( "dash " );
    }
}
