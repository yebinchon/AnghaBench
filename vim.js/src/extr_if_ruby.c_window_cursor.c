
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int col; int lnum; } ;
struct TYPE_5__ {TYPE_1__ w_cursor; } ;
typedef TYPE_2__ win_T ;
typedef int VALUE ;


 int INT2NUM (int ) ;
 TYPE_2__* get_win (int ) ;
 int rb_assoc_new (int ,int ) ;

__attribute__((used)) static VALUE window_cursor(VALUE self)
{
    win_T *win = get_win(self);

    return rb_assoc_new(INT2NUM(win->w_cursor.lnum), INT2NUM(win->w_cursor.col));
}
