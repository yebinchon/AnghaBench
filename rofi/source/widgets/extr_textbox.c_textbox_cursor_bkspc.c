
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cursor; } ;
typedef TYPE_1__ textbox ;


 int textbox_cursor_dec (TYPE_1__*) ;
 int textbox_cursor_del (TYPE_1__*) ;

__attribute__((used)) static void textbox_cursor_bkspc ( textbox *tb )
{
    if ( tb && tb->cursor > 0 ) {
        textbox_cursor_dec ( tb );
        textbox_cursor_del ( tb );
    }
}
