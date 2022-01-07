
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_irect ;
struct TYPE_4__ {TYPE_1__* layout; } ;
struct TYPE_3__ {int pady; int padx; int anchor; int fill; int side; } ;


 TYPE_2__ ui ;
 int ui_pack_layout (int,int,int ,int ,int ,int ,int ) ;

fz_irect ui_pack(int slave_w, int slave_h)
{
 return ui_pack_layout(slave_w, slave_h, ui.layout->side, ui.layout->fill, ui.layout->anchor, ui.layout->padx, ui.layout->pady);
}
