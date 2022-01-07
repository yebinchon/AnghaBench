
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {int dummy; } ;


 int LAYOUT_LEFTRIGHT ;
 int layout_set_even (struct window*,int ) ;

__attribute__((used)) static void
layout_set_even_h(struct window *w)
{
 layout_set_even(w, LAYOUT_LEFTRIGHT);
}
