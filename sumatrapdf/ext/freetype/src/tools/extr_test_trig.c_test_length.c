
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double x; double y; } ;
typedef TYPE_1__ FT_Vector ;
typedef double FT_Fixed ;


 int FT_ANGLE_2PI ;
 double FT_Vector_Length (TYPE_1__*) ;
 int SPI ;
 scalar_t__ THRESHOLD ;
 scalar_t__ abs (double) ;
 double cos (int) ;
 int error ;
 int printf (char*,double,double,double,double) ;
 double sin (int) ;

__attribute__((used)) static void
  test_length( void )
  {
    int i;


    for ( i = 0; i < FT_ANGLE_2PI; i += 0x10000L )
    {
      FT_Vector v;
      FT_Fixed l, l2;


      l = (FT_Fixed)(500.0*65536.0);
      v.x = (FT_Fixed)( l * cos( i*SPI ) );
      v.y = (FT_Fixed)( l * sin( i*SPI ) );
      l2 = FT_Vector_Length( &v );

      if ( abs( l2-l ) > THRESHOLD )
      {
        error = 1;
        printf( "FT_Length( %.7f, %.7f ) = %.5f, length = %.5f\n",
                v.x/65536.0, v.y/65536.0, l2/65536.0, l/65536.0 );
      }
    }
  }
