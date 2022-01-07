
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ start; int movable; scalar_t__ num_points; } ;
typedef int FT_Vector ;
typedef TYPE_1__* FT_StrokeBorder ;
typedef scalar_t__ FT_Int ;
typedef int FT_Error ;


 int FALSE ;
 int ft_stroke_border_close (TYPE_1__*,int ) ;
 int ft_stroke_border_lineto (TYPE_1__*,int *,int ) ;

__attribute__((used)) static FT_Error
  ft_stroke_border_moveto( FT_StrokeBorder border,
                           FT_Vector* to )
  {

    if ( border->start >= 0 )
      ft_stroke_border_close( border, FALSE );

    border->start = (FT_Int)border->num_points;
    border->movable = FALSE;

    return ft_stroke_border_lineto( border, to, FALSE );
  }
