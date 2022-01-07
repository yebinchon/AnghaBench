
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int h; int w; int y; int x; } ;
struct TYPE_10__ {int flags; int cursor; void* text; TYPE_1__ widget; } ;
typedef TYPE_2__ textbox ;
typedef char gchar ;
struct TYPE_11__ {scalar_t__ parent; } ;


 int MAX (int ,int ) ;
 int MIN (int,int ) ;
 int TB_AUTOWIDTH ;
 TYPE_3__* WIDGET (TYPE_2__*) ;
 int __textbox_update_pango_text (TYPE_2__*) ;
 int g_free (void*) ;
 void* g_strdup (char const*) ;
 void* g_strndup (char const*,int) ;
 scalar_t__ g_utf8_strlen (void*,int) ;
 scalar_t__ g_utf8_validate (char const*,int,char const**) ;
 int textbox_moveresize (TYPE_2__*,int ,int ,int ,int ) ;
 int widget_queue_redraw (TYPE_3__*) ;
 int widget_update (scalar_t__) ;

void textbox_text ( textbox *tb, const char *text )
{
    if ( tb == ((void*)0) ) {
        return;
    }
    g_free ( tb->text );
    const gchar *last_pointer = ((void*)0);

    if ( g_utf8_validate ( text, -1, &last_pointer ) ) {
        tb->text = g_strdup ( text );
    }
    else {
        if ( last_pointer != ((void*)0) ) {

            tb->text = g_strndup ( text, ( last_pointer - text ) );
        }
        else {
            tb->text = g_strdup ( "Invalid UTF-8 string." );
        }
    }
    __textbox_update_pango_text ( tb );
    if ( tb->flags & TB_AUTOWIDTH ) {
        textbox_moveresize ( tb, tb->widget.x, tb->widget.y, tb->widget.w, tb->widget.h );
        if ( WIDGET ( tb )->parent ) {
            widget_update ( WIDGET ( tb )->parent );
        }
    }

    tb->cursor = MAX ( 0, MIN ( ( int ) g_utf8_strlen ( tb->text, -1 ), tb->cursor ) );
    widget_queue_redraw ( WIDGET ( tb ) );
}
