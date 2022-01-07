
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int start; int valid; scalar_t__ num_points; } ;
typedef TYPE_1__* FT_StrokeBorder ;


 int FALSE ;

__attribute__((used)) static void
  ft_stroke_border_reset( FT_StrokeBorder border )
  {
    border->num_points = 0;
    border->start = -1;
    border->valid = FALSE;
  }
