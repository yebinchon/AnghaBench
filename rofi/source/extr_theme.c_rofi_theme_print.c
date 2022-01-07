
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ThemeWidget ;


 char* PACKAGE_VERSION ;
 int printf (char*,char*) ;
 int rofi_theme_print_index (int *) ;

void rofi_theme_print ( ThemeWidget *widget )
{
    if ( widget != ((void*)0) ) {
        printf ( "/**\n * rofi -dump-theme output.\n * Rofi version: %s\n **/\n", PACKAGE_VERSION );
        rofi_theme_print_index ( widget );
    }
}
