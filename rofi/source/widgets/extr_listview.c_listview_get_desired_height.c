
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int widget ;
struct TYPE_4__ {scalar_t__ enabled; } ;
struct TYPE_5__ {int menu_lines; int req_elements; int max_displayed_lines; scalar_t__ type; int element_height; int fixed_num_lines; scalar_t__ dynamic; int spacing; TYPE_1__ widget; } ;
typedef TYPE_2__ listview ;


 scalar_t__ BARVIEW ;
 scalar_t__ FALSE ;
 int MIN (int,int) ;
 int ROFI_ORIENTATION_VERTICAL ;
 int WIDGET (TYPE_2__*) ;
 int distance_get_pixel (int ,int ) ;
 int widget_padding_get_padding_height (int ) ;

__attribute__((used)) static int listview_get_desired_height ( widget *wid )
{
    listview *lv = (listview *) wid;
    if ( lv == ((void*)0) || lv->widget.enabled == FALSE ) {
        return 0;
    }
    int spacing = distance_get_pixel ( lv->spacing, ROFI_ORIENTATION_VERTICAL );
    int h = lv->menu_lines;
    if ( !( lv->fixed_num_lines ) ) {
        if ( lv->dynamic ) {
            h = MIN ( lv->menu_lines, lv->req_elements );
        }
        else {
            h = MIN ( lv->menu_lines, lv->max_displayed_lines );
        }
    }
    if ( lv->type == BARVIEW ) {
        h = MIN ( h, 1 );
    }
    if ( h == 0 ) {
        if ( lv->dynamic && !lv->fixed_num_lines ) {

            return 0;
        }
        return widget_padding_get_padding_height ( WIDGET ( lv ) );
    }
    int height = widget_padding_get_padding_height ( WIDGET ( lv ) );
    height += h * ( lv->element_height + spacing ) - spacing;
    return height;
}
