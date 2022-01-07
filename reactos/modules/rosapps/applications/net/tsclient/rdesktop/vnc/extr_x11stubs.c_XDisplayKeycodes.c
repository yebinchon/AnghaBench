
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Display ;



void
XDisplayKeycodes(Display * display, int *min_keycode, int *max_keycode)
{

 *min_keycode = 0xffff;
 *max_keycode = 0;
}
