
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int ThemeWidget ;


 int rofi_theme ;
 int * rofi_theme_find (int *,char const*,int ) ;
 int * rofi_theme_find_single (int ,char const*) ;

ThemeWidget *rofi_theme_find_widget ( const char *name, const char *state, gboolean exact )
{

    ThemeWidget *widget = rofi_theme_find_single ( rofi_theme, name );
    widget = rofi_theme_find ( widget, state, exact );

    return widget;
}
