
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lineheight; } ;


 TYPE_1__ ui ;
 int ui_pack (int,int) ;

void ui_spacer(void)
{
 ui_pack(ui.lineheight / 2, ui.lineheight / 2);
}
