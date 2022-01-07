
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vimjs_invert_rectangle (int,int,int,int) ;

void
gui_mch_invert_rectangle(int r, int c, int nr, int nc)
{
    vimjs_invert_rectangle(r, c, nr, nc);
}
