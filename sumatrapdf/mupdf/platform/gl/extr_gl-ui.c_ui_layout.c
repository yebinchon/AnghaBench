
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum side { ____Placeholder_side } side ;
typedef enum fill { ____Placeholder_fill } fill ;
typedef enum anchor { ____Placeholder_anchor } anchor ;
struct TYPE_4__ {TYPE_1__* layout; } ;
struct TYPE_3__ {int side; int fill; int anchor; int padx; int pady; } ;


 TYPE_2__ ui ;

void ui_layout(enum side side, enum fill fill, enum anchor anchor, int padx, int pady)
{
 ui.layout->side = side;
 ui.layout->fill = fill;
 ui.layout->anchor = anchor;
 ui.layout->padx = padx;
 ui.layout->pady = pady;
}
