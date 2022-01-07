
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;


 int ThemeWidget ;
 TYPE_1__* g_slice_new0 (int ) ;
 int g_strdup (char*) ;
 TYPE_1__* rofi_theme ;
 int rofi_theme_free (TYPE_1__*) ;
 int rofi_theme_insert_listview_backwards_fix () ;

void rofi_theme_reset ( void )
{
    rofi_theme_free ( rofi_theme );
    rofi_theme = g_slice_new0 ( ThemeWidget );
    rofi_theme->name = g_strdup ( "Root" );

    rofi_theme_insert_listview_backwards_fix ( );
}
