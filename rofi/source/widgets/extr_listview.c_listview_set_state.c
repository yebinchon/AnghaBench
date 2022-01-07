
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ box; scalar_t__ icon; scalar_t__ textbox; } ;
typedef TYPE_1__ _listview_row ;
typedef int TextBoxFontType ;


 int WIDGET (scalar_t__) ;
 int listview_set_style (int ,int ) ;
 int widget_queue_redraw (int ) ;

__attribute__((used)) static void listview_set_state ( _listview_row r, TextBoxFontType type )
{
    listview_set_style ( WIDGET(r.box), type);
    listview_set_style ( WIDGET(r.textbox), type);
    if ( r.icon ) {
        listview_set_style ( WIDGET(r.icon), type);
    }
    widget_queue_redraw ( WIDGET( r.box ) );
}
