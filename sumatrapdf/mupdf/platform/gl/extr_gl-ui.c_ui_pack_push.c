
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_irect ;
struct TYPE_4__ {TYPE_1__* layout; int * cavity; } ;
struct TYPE_3__ {scalar_t__ pady; scalar_t__ padx; int anchor; int fill; int side; } ;


 int ALL ;
 int BOTH ;
 int NW ;
 TYPE_2__ ui ;

void ui_pack_push(fz_irect cavity)
{
 *(++ui.cavity) = cavity;
 ++ui.layout;
 ui.layout->side = ALL;
 ui.layout->fill = BOTH;
 ui.layout->anchor = NW;
 ui.layout->padx = 0;
 ui.layout->pady = 0;
}
