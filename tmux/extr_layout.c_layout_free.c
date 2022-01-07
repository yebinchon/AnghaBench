
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {int layout_root; } ;


 int layout_free_cell (int ) ;

void
layout_free(struct window *w)
{
 layout_free_cell(w->layout_root);
}
