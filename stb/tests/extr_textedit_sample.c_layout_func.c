
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int stringlen; } ;
struct TYPE_5__ {int num_chars; int x1; double baseline_y_delta; int ymin; scalar_t__ ymax; scalar_t__ x0; } ;
typedef TYPE_1__ StbTexteditRow ;
typedef TYPE_2__ STB_TEXTEDIT_STRING ;



void layout_func(StbTexteditRow *row, STB_TEXTEDIT_STRING *str, int start_i)
{
   int remaining_chars = str->stringlen - start_i;
   row->num_chars = remaining_chars > 20 ? 20 : remaining_chars;
   row->x0 = 0;
   row->x1 = 20;
   row->baseline_y_delta = 1.25;
   row->ymin = -1;
   row->ymax = 0;
}
