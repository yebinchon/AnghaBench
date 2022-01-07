
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * properties; } ;
typedef TYPE_1__ ThemeWidget ;
typedef int GHashTable ;
typedef int GDestroyNotify ;


 int g_hash_table_foreach (int *,int ,int *) ;
 int * g_hash_table_new_full (int ,int ,int *,int ) ;
 int g_str_equal ;
 int g_str_hash ;
 int rofi_theme_copy_property_int ;
 scalar_t__ rofi_theme_property_free ;

void rofi_theme_widget_add_properties ( ThemeWidget *widget, GHashTable *table )
{
    if ( table == ((void*)0) ) {
        return;
    }
    if ( widget->properties == ((void*)0) ) {
        widget->properties = g_hash_table_new_full ( g_str_hash, g_str_equal, ((void*)0), (GDestroyNotify) rofi_theme_property_free );
    }
    g_hash_table_foreach ( table, rofi_theme_copy_property_int, widget->properties );
}
