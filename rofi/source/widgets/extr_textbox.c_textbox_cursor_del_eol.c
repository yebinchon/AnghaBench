
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cursor; int text; } ;
typedef TYPE_1__ textbox ;


 int g_utf8_strlen (int ,int) ;
 int textbox_delete (TYPE_1__*,int,int) ;

__attribute__((used)) static void textbox_cursor_del_eol ( textbox *tb )
{
    if ( tb && tb->cursor >= 0 ) {
        int length = g_utf8_strlen ( tb->text, -1 ) - tb->cursor;
        if ( length >= 0 ) {
            textbox_delete ( tb, tb->cursor, length );
        }
    }
}
