
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cursor; } ;
typedef TYPE_1__ textbox ;


 int textbox_delete (TYPE_1__*,int ,int) ;

__attribute__((used)) static void textbox_cursor_del_sol ( textbox *tb )
{
    if ( tb && tb->cursor >= 0 ) {
        int length = tb->cursor;
        if ( length >= 0 ) {
            textbox_delete ( tb, 0, length );
        }
    }
}
