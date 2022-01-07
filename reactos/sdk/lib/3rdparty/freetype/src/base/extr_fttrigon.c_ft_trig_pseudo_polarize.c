
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; } ;
typedef TYPE_1__ FT_Vector ;
typedef int FT_Int ;
typedef int FT_Fixed ;
typedef int FT_Angle ;


 int FT_ANGLE_PI ;
 int FT_ANGLE_PI2 ;
 int FT_PAD_ROUND (int,int) ;
 int FT_TRIG_MAX_ITERS ;
 int* ft_trig_arctan_table ;

__attribute__((used)) static void
  ft_trig_pseudo_polarize( FT_Vector* vec )
  {
    FT_Angle theta;
    FT_Int i;
    FT_Fixed x, y, xtemp, b;
    const FT_Angle *arctanptr;


    x = vec->x;
    y = vec->y;


    if ( y > x )
    {
      if ( y > -x )
      {
        theta = FT_ANGLE_PI2;
        xtemp = y;
        y = -x;
        x = xtemp;
      }
      else
      {
        theta = y > 0 ? FT_ANGLE_PI : -FT_ANGLE_PI;
        x = -x;
        y = -y;
      }
    }
    else
    {
      if ( y < -x )
      {
        theta = -FT_ANGLE_PI2;
        xtemp = -y;
        y = x;
        x = xtemp;
      }
      else
      {
        theta = 0;
      }
    }

    arctanptr = ft_trig_arctan_table;


    for ( i = 1, b = 1; i < FT_TRIG_MAX_ITERS; b <<= 1, i++ )
    {
      if ( y > 0 )
      {
        xtemp = x + ( ( y + b ) >> i );
        y = y - ( ( x + b ) >> i );
        x = xtemp;
        theta += *arctanptr++;
      }
      else
      {
        xtemp = x - ( ( y + b ) >> i );
        y = y + ( ( x + b ) >> i );
        x = xtemp;
        theta -= *arctanptr++;
      }
    }



    if ( theta >= 0 )
      theta = FT_PAD_ROUND( theta, 16 );
    else
      theta = -FT_PAD_ROUND( -theta, 16 );

    vec->x = x;
    vec->y = theta;
  }
