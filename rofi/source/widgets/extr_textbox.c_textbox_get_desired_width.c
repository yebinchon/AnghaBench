
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ expand; } ;
typedef TYPE_1__ widget ;
struct TYPE_8__ {int flags; int layout; } ;
typedef TYPE_2__ textbox ;
typedef int RofiDistance ;


 unsigned int DOT_OFFSET ;
 int ROFI_ORIENTATION_HORIZONTAL ;
 int TB_AUTOWIDTH ;
 int TB_INDICATOR ;
 int WIDGET (TYPE_2__*) ;
 int distance_get_pixel (int ,int ) ;
 int pango_layout_get_width (int ) ;
 int pango_layout_set_width (int ,int) ;
 int rofi_theme_get_distance (int ,char*,int ) ;
 int textbox_get_font_width (TYPE_2__*) ;
 int widget_padding_get_left (int ) ;
 int widget_padding_get_padding_width (TYPE_1__*) ;
 scalar_t__ widget_padding_get_right (int ) ;

int textbox_get_desired_width ( widget *wid )
{
    if ( wid == ((void*)0) ) {
        return 0;
    }
    textbox *tb = (textbox *) wid;
    unsigned int offset = ( ( tb->flags & TB_INDICATOR ) ? DOT_OFFSET : 0 );
    if ( wid->expand && tb->flags & TB_AUTOWIDTH ) {
        return textbox_get_font_width ( tb ) + widget_padding_get_padding_width ( wid ) + offset;
    }
    RofiDistance w = rofi_theme_get_distance ( WIDGET ( tb ), "width", 0 );
    int wi = distance_get_pixel ( w, ROFI_ORIENTATION_HORIZONTAL );
    if ( wi > 0 ) {
        return wi;
    }
    int padding = widget_padding_get_left ( WIDGET ( tb ) );
    padding += widget_padding_get_right ( WIDGET ( tb ) );
    int old_width = pango_layout_get_width ( tb->layout );
    pango_layout_set_width ( tb->layout, -1 );
    int width = textbox_get_font_width ( tb );

    pango_layout_set_width ( tb->layout, old_width );
    return width + padding + offset;
}
