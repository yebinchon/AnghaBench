
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* layout; TYPE_1__* cavity; } ;
struct TYPE_5__ {int padx; } ;
struct TYPE_4__ {int x1; int x0; } ;


 TYPE_3__ ui ;

int ui_available_width(void)
{
 return ui.cavity->x1 - ui.cavity->x0 - ui.layout->padx * 2;
}
