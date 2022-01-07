
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ start; int num_points; scalar_t__ movable; int * tags; TYPE_1__* points; } ;
struct TYPE_6__ {scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ FT_Vector ;
typedef int FT_UInt ;
typedef TYPE_2__* FT_StrokeBorder ;
typedef int FT_Error ;
typedef int FT_Byte ;
typedef scalar_t__ FT_Bool ;


 int FT_ASSERT (int) ;
 int FT_Err_Ok ;
 scalar_t__ FT_IS_SMALL (scalar_t__) ;
 int FT_STROKE_TAG_ON ;
 int ft_stroke_border_grow (TYPE_2__*,int) ;

__attribute__((used)) static FT_Error
  ft_stroke_border_lineto( FT_StrokeBorder border,
                           FT_Vector* to,
                           FT_Bool movable )
  {
    FT_Error error = FT_Err_Ok;


    FT_ASSERT( border->start >= 0 );

    if ( border->movable )
    {

      border->points[border->num_points - 1] = *to;
    }
    else
    {

      if ( border->num_points > (FT_UInt)border->start &&
           FT_IS_SMALL( border->points[border->num_points - 1].x - to->x ) &&
           FT_IS_SMALL( border->points[border->num_points - 1].y - to->y ) )
        return error;


      error = ft_stroke_border_grow( border, 1 );
      if ( !error )
      {
        FT_Vector* vec = border->points + border->num_points;
        FT_Byte* tag = border->tags + border->num_points;


        vec[0] = *to;
        tag[0] = FT_STROKE_TAG_ON;

        border->num_points += 1;
      }
    }
    border->movable = movable;
    return error;
  }
