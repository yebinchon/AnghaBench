
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* text; int blink; int changed; } ;
typedef TYPE_1__ textbox ;


 int MAX (int ,int ) ;
 int MIN (int,int) ;
 int TRUE ;
 char* g_realloc (char*,int) ;
 char* g_utf8_offset_to_pointer (char*,int const) ;
 int memmove (char*,char const*,int const) ;
 scalar_t__ strlen (char*) ;

void textbox_insert ( textbox *tb, const int char_pos, const char *str, const int slen )
{
    if ( tb == ((void*)0) ) {
        return;
    }
    char *c = g_utf8_offset_to_pointer ( tb->text, char_pos );
    int pos = c - tb->text;
    int len = ( int ) strlen ( tb->text );
    pos = MAX ( 0, MIN ( len, pos ) );

    tb->text = g_realloc ( tb->text, len + slen + 1 );

    char *at = tb->text + pos;
    memmove ( at + slen, at, len - pos + 1 );

    memmove ( at, str, slen );



    tb->blink = 2;
    tb->changed = TRUE;
}
