
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; scalar_t__ cursor; } ;
typedef TYPE_1__ textbox ;
typedef char gchar ;
typedef int gboolean ;


 int FALSE ;
 int TB_EDITABLE ;
 int TRUE ;
 scalar_t__ g_unichar_iscntrl (int ) ;
 int g_utf8_get_char (char const*) ;
 char* g_utf8_next_char (char const*) ;
 int textbox_cursor (TYPE_1__*,scalar_t__) ;
 int textbox_insert (TYPE_1__*,scalar_t__,char const*,int) ;

gboolean textbox_append_text ( textbox *tb, const char *pad, const int pad_len )
{
    if ( tb == ((void*)0) ) {
        return FALSE;
    }
    if ( !( tb->flags & TB_EDITABLE ) ) {
        return FALSE;
    }



    gboolean used_something = FALSE;
    const gchar *w, *n, *e;
    for ( w = pad, n = g_utf8_next_char ( w ), e = w + pad_len; w < e; w = n, n = g_utf8_next_char ( n ) ) {
        if ( g_unichar_iscntrl ( g_utf8_get_char ( w ) ) ) {
            continue;
        }
        textbox_insert ( tb, tb->cursor, w, n - w );
        textbox_cursor ( tb, tb->cursor + 1 );
        used_something = TRUE;
    }
    return used_something;
}
