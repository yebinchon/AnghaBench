
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double FT_Fixed ;


 int FT_ANGLE_PI2 ;
 double FT_Tan (int) ;
 int SPI ;
 scalar_t__ THRESHOLD ;
 scalar_t__ abs (double) ;
 int error ;
 int printf (char*,int,double,int,double) ;
 double tan (int) ;

__attribute__((used)) static void
  test_tan( void )
  {
    int i;


    for ( i = 0; i < FT_ANGLE_PI2 - 0x2000000L; i += 0x10000L )
    {
      FT_Fixed f1, f2;
      double d2;


      f1 = FT_Tan(i);
      d2 = tan( i*SPI );
      f2 = (FT_Fixed)(d2*65536.0);

      if ( abs( f2-f1 ) > THRESHOLD )
      {
        error = 1;
        printf( "FT_Tan[%3d] = %.7f  tan[%3d] = %.7f\n",
                (i >> 16), f1/65536.0, (i >> 16), d2 );
      }
    }
  }
