
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int glEndList () ;
 int ui_pack_pop () ;

void ui_popup_end(void)
{
 glEndList();
 ui_pack_pop();
}
