
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int overlay_list; } ;


 int glDeleteLists (int ,int) ;
 int glutExit () ;
 TYPE_1__ ui ;
 int ui_finish_fonts () ;

void ui_finish(void)
{
 glDeleteLists(ui.overlay_list, 1);
 ui_finish_fonts();
 glutExit();
}
