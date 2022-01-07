
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEXT ;
 int keyboard_close () ;
 scalar_t__ sdata ;
 int vga_setmode (int ) ;
 int xfree (scalar_t__) ;

void ui_destroy_window(void)
{
  keyboard_close();
  vga_setmode(TEXT);
  if (sdata != 0)
    xfree(sdata);
}
