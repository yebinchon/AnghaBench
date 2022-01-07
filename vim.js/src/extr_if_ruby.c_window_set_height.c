
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int win_T ;
typedef int VALUE ;


 int NUM2INT (int ) ;
 int * curwin ;
 int * get_win (int ) ;
 int win_setheight (int ) ;

__attribute__((used)) static VALUE window_set_height(VALUE self, VALUE height)
{
    win_T *win = get_win(self);
    win_T *savewin = curwin;

    curwin = win;
    win_setheight(NUM2INT(height));
    curwin = savewin;
    return height;
}
