
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ FT_Vector ;
typedef int FT_StrokeBorder ;
typedef int FT_Fixed ;
typedef scalar_t__ FT_Error ;
typedef scalar_t__ FT_Angle ;


 scalar_t__ FT_ANGLE_PI2 ;
 scalar_t__ FT_ARC_CUBIC_ANGLE ;
 int FT_Cos (scalar_t__) ;
 scalar_t__ FT_Err_Ok ;
 int FT_MulDiv (int ,int,int) ;
 int FT_Sin (scalar_t__) ;
 int FT_Vector_From_Polar (TYPE_1__*,int ,scalar_t__) ;
 scalar_t__ ft_stroke_border_cubicto (int ,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static FT_Error
  ft_stroke_border_arcto( FT_StrokeBorder border,
                          FT_Vector* center,
                          FT_Fixed radius,
                          FT_Angle angle_start,
                          FT_Angle angle_diff )
  {
    FT_Angle total, angle, step, rotate, next, theta;
    FT_Vector a, b, a2, b2;
    FT_Fixed length;
    FT_Error error = FT_Err_Ok;



    FT_Vector_From_Polar( &a, radius, angle_start );
    a.x += center->x;
    a.y += center->y;

    total = angle_diff;
    angle = angle_start;
    rotate = ( angle_diff >= 0 ) ? FT_ANGLE_PI2 : -FT_ANGLE_PI2;

    while ( total != 0 )
    {
      step = total;
      if ( step > FT_ARC_CUBIC_ANGLE )
        step = FT_ARC_CUBIC_ANGLE;

      else if ( step < -FT_ARC_CUBIC_ANGLE )
        step = -FT_ARC_CUBIC_ANGLE;

      next = angle + step;
      theta = step;
      if ( theta < 0 )
        theta = -theta;

      theta >>= 1;


      FT_Vector_From_Polar( &b, radius, next );
      b.x += center->x;
      b.y += center->y;


      length = FT_MulDiv( radius, FT_Sin( theta ) * 4,
                          ( 0x10000L + FT_Cos( theta ) ) * 3 );

      FT_Vector_From_Polar( &a2, length, angle + rotate );
      a2.x += a.x;
      a2.y += a.y;

      FT_Vector_From_Polar( &b2, length, next - rotate );
      b2.x += b.x;
      b2.y += b.y;


      error = ft_stroke_border_cubicto( border, &a2, &b2, &b );
      if ( error )
        break;


      a = b;
      total -= step;
      angle = next;
    }

    return error;
  }
