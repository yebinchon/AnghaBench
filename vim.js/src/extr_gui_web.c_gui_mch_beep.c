
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vimjs_beep () ;

void
gui_mch_beep(void)
{
    vimjs_beep();
}
