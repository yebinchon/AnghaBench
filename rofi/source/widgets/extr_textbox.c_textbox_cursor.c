
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int blink; int cursor; int * text; } ;
typedef TYPE_1__ textbox ;


 int MAX (int ,int ) ;
 int MIN (int,int) ;
 int WIDGET (TYPE_1__*) ;
 int g_utf8_strlen (int *,int) ;
 int widget_queue_redraw (int ) ;

void textbox_cursor ( textbox *tb, int pos )
{
    if ( tb == ((void*)0) ) {
        return;
    }
    int length = ( tb->text == ((void*)0) ) ? 0 : g_utf8_strlen ( tb->text, -1 );
    tb->cursor = MAX ( 0, MIN ( length, pos ) );

    tb->blink = 3;
    widget_queue_redraw ( WIDGET ( tb ) );
}
