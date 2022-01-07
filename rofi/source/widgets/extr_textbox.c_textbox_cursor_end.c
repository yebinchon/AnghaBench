
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cursor; int blink; int * text; } ;
typedef TYPE_1__ textbox ;


 int WIDGET (TYPE_1__*) ;
 scalar_t__ g_utf8_strlen (int *,int) ;
 int widget_queue_redraw (int ) ;

void textbox_cursor_end ( textbox *tb )
{
    if ( tb->text == ((void*)0) ) {
        tb->cursor = 0;
        widget_queue_redraw ( WIDGET ( tb ) );
        return;
    }
    tb->cursor = ( int ) g_utf8_strlen ( tb->text, -1 );
    widget_queue_redraw ( WIDGET ( tb ) );

    tb->blink = 2;
}
