
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int get_x11_icon (int ) ;

int
mch_can_restore_icon()
{
    return get_x11_icon(TRUE);
}
