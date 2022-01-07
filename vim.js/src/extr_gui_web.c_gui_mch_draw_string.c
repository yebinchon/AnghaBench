
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int vimjs_draw_string (int,int,int *,int,int) ;

void
gui_mch_draw_string(int row, int col, char_u *s, int len, int flags)
{
    vimjs_draw_string(row, col, s, len, flags);
}
