
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int mouse_active ;
 int mouse_hidden ;

void
mch_setmouse(int on)
{
    mouse_active = on;
    mouse_hidden = TRUE;
}
