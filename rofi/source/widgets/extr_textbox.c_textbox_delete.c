
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* text; int cursor; int blink; int changed; } ;
typedef TYPE_1__ textbox ;


 int MAX (int ,int ) ;
 int MIN (int,int) ;
 int TRUE ;
 char* g_utf8_offset_to_pointer (char*,int) ;
 int g_utf8_strlen (char*,int) ;
 int memmove (char*,char*,int) ;
 int strlen (char*) ;

void textbox_delete ( textbox *tb, int pos, int dlen )
{
    if ( tb == ((void*)0) ) {
        return;
    }
    int len = g_utf8_strlen ( tb->text, -1 );
    if ( len == pos ) {
        return;
    }
    pos = MAX ( 0, MIN ( len, pos ) );
    if ( ( pos + dlen ) > len ) {
        dlen = len - dlen;
    }

    char *start = g_utf8_offset_to_pointer ( tb->text, pos );
    char *end = g_utf8_offset_to_pointer ( tb->text, pos + dlen );

    memmove ( start, end, ( tb->text + strlen ( tb->text ) ) - end + 1 );
    if ( tb->cursor >= pos && tb->cursor < ( pos + dlen ) ) {
        tb->cursor = pos;
    }
    else if ( tb->cursor >= ( pos + dlen ) ) {
        tb->cursor -= dlen;
    }


    tb->blink = 2;
    tb->changed = TRUE;
}
