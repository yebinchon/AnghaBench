
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ property; int requestor; } ;
typedef TYPE_2__ xcb_selection_notify_event_t ;
typedef char gchar ;
struct TYPE_5__ {scalar_t__ UTF8_STRING; } ;
struct TYPE_7__ {TYPE_1__ ewmh; } ;
typedef int RofiViewState ;


 scalar_t__ XCB_ATOM_NONE ;
 int g_free (char*) ;
 int g_warning (char*) ;
 int rofi_view_handle_text (int *,char*) ;
 unsigned int strlen (char*) ;
 char* window_get_text_prop (int ,scalar_t__) ;
 TYPE_3__* xcb ;

__attribute__((used)) static void rofi_view_paste ( RofiViewState *state, xcb_selection_notify_event_t *xse )
{
    if ( xse->property == XCB_ATOM_NONE ) {
        g_warning ( "Failed to convert selection" );
    }
    else if ( xse->property == xcb->ewmh.UTF8_STRING ) {
        gchar *text = window_get_text_prop ( xse->requestor, xcb->ewmh.UTF8_STRING );
        if ( text != ((void*)0) && text[0] != '\0' ) {
            unsigned int dl = strlen ( text );

            for ( unsigned int i = 0; i < dl; i++ ) {
                if ( text[i] == '\n' ) {
                    text[i] = '\0';
                }
            }
            rofi_view_handle_text ( state, text );
        }
        g_free ( text );
    }
    else {
        g_warning ( "Failed" );
    }
}
