
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


 int Check_Type (int ,int ) ;
 int NOT_VALID ;
 int NUM2LONG (int ) ;
 int NUM2UINT (int ) ;
 int Qnil ;
 int RARRAY_LEN (int ) ;
 int * RARRAY_PTR (int ) ;
 int T_ARRAY ;
 int check_cursor () ;
 TYPE_2__* get_win (int ) ;
 int rb_eArgError ;
 int rb_raise (int ,char*) ;
 int update_screen (int ) ;

__attribute__((used)) static VALUE window_set_cursor(VALUE self, VALUE pos)
{
    VALUE lnum, col;
    win_T *win = get_win(self);

    Check_Type(pos, T_ARRAY);
    if (RARRAY_LEN(pos) != 2)
 rb_raise(rb_eArgError, "array length must be 2");
    lnum = RARRAY_PTR(pos)[0];
    col = RARRAY_PTR(pos)[1];
    win->w_cursor.lnum = NUM2LONG(lnum);
    win->w_cursor.col = NUM2UINT(col);
    check_cursor();
    update_screen(NOT_VALID);
    return Qnil;
}
