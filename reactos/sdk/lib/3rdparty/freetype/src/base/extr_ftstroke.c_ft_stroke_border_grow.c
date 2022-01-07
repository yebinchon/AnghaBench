
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ max_points; scalar_t__ num_points; int tags; int points; int memory; } ;
typedef scalar_t__ FT_UInt ;
typedef TYPE_1__* FT_StrokeBorder ;
typedef int FT_Memory ;
typedef int FT_Error ;


 int FT_Err_Ok ;
 scalar_t__ FT_RENEW_ARRAY (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static FT_Error
  ft_stroke_border_grow( FT_StrokeBorder border,
                         FT_UInt new_points )
  {
    FT_UInt old_max = border->max_points;
    FT_UInt new_max = border->num_points + new_points;
    FT_Error error = FT_Err_Ok;


    if ( new_max > old_max )
    {
      FT_UInt cur_max = old_max;
      FT_Memory memory = border->memory;


      while ( cur_max < new_max )
        cur_max += ( cur_max >> 1 ) + 16;

      if ( FT_RENEW_ARRAY( border->points, old_max, cur_max ) ||
           FT_RENEW_ARRAY( border->tags, old_max, cur_max ) )
        goto Exit;

      border->max_points = cur_max;
    }

  Exit:
    return error;
  }
