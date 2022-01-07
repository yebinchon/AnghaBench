
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int desk_save ;
 int xfree (int ) ;

void ui_deinit(void)
{
  xfree(desk_save);
}
