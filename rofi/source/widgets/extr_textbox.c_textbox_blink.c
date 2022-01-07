
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int blink; } ;
typedef TYPE_1__ textbox ;
typedef scalar_t__ gpointer ;
typedef int gboolean ;


 int TRUE ;
 int WIDGET (TYPE_1__*) ;
 int rofi_view_queue_redraw () ;
 int widget_queue_redraw (int ) ;

__attribute__((used)) static gboolean textbox_blink ( gpointer data )
{
    textbox *tb = (textbox *) data;
    if ( tb->blink < 2 ) {
        tb->blink = !tb->blink;
        widget_queue_redraw ( WIDGET ( tb ) );
        rofi_view_queue_redraw ( );
    }
    else {
        tb->blink--;
    }
    return TRUE;
}
