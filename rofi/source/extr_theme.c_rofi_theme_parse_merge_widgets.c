
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned int num_widgets; struct TYPE_8__** widgets; int properties; int name; } ;
typedef TYPE_1__ ThemeWidget ;


 int g_assert (int ) ;
 scalar_t__ g_strcmp0 (int ,char*) ;
 TYPE_1__* rofi_theme ;
 TYPE_1__* rofi_theme_find_or_create_name (TYPE_1__*,int ) ;
 int rofi_theme_widget_add_properties (TYPE_1__*,int ) ;

void rofi_theme_parse_merge_widgets ( ThemeWidget *parent, ThemeWidget *child )
{
    g_assert ( parent != ((void*)0) );
    g_assert ( child != ((void*)0) );

    if ( parent == rofi_theme && g_strcmp0(child->name, "*") == 0 ){
        rofi_theme_widget_add_properties ( parent, child->properties);
        return;
    }

    ThemeWidget *w = rofi_theme_find_or_create_name ( parent, child->name);
    rofi_theme_widget_add_properties ( w, child->properties);
    for ( unsigned int i =0; i < child->num_widgets; i++) {
        rofi_theme_parse_merge_widgets ( w, child->widgets[i]);
    }
}
