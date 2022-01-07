
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cursor; } ;
typedef TYPE_1__ textbox ;


 int textbox_cursor (TYPE_1__*,int) ;

__attribute__((used)) static int textbox_cursor_dec ( textbox *tb )
{
    int old = tb->cursor;
    textbox_cursor ( tb, tb->cursor - 1 );
    return old != tb->cursor;
}
