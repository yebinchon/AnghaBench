
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cursor; int * text; } ;
typedef TYPE_1__ textbox ;


 int textbox_delete (TYPE_1__*,int ,int) ;

__attribute__((used)) static void textbox_cursor_del ( textbox *tb )
{
    if ( tb == ((void*)0) || tb->text == ((void*)0) ) {
        return;
    }
    textbox_delete ( tb, tb->cursor, 1 );
}
