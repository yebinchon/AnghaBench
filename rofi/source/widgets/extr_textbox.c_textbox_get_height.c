
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int textbox ;


 int WIDGET (int const*) ;
 int textbox_get_font_height (int const*) ;
 int widget_padding_get_padding_height (int ) ;

int textbox_get_height ( const textbox *tb )
{
    return textbox_get_font_height ( tb ) + widget_padding_get_padding_height ( WIDGET ( tb ) );
}
