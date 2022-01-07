
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int start; int valid; scalar_t__ max_points; scalar_t__ num_points; int tags; int points; int memory; } ;
typedef TYPE_1__* FT_StrokeBorder ;
typedef int FT_Memory ;


 int FALSE ;
 int FT_FREE (int ) ;

__attribute__((used)) static void
  ft_stroke_border_done( FT_StrokeBorder border )
  {
    FT_Memory memory = border->memory;


    FT_FREE( border->points );
    FT_FREE( border->tags );

    border->num_points = 0;
    border->max_points = 0;
    border->start = -1;
    border->valid = FALSE;
  }
