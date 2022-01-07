
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cursor; } ;
typedef TYPE_1__ textbox ;


 int textbox_cursor_dec_word (TYPE_1__*) ;
 int textbox_delete (TYPE_1__*,int,int) ;

__attribute__((used)) static void textbox_cursor_bkspc_word ( textbox *tb )
{
    if ( tb && tb->cursor > 0 ) {
        int cursor = tb->cursor;
        textbox_cursor_dec_word ( tb );
        if ( cursor > tb->cursor ) {
            textbox_delete ( tb, tb->cursor, cursor - tb->cursor );
        }
    }
}
