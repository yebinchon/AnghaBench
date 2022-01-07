
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emscripten_sleep (int) ;

void
gui_mch_update(void)
{
    emscripten_sleep(1);
}
