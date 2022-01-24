#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {double x; double y; } ;
typedef  TYPE_1__ FT_Vector ;
typedef  double FT_Fixed ;

/* Variables and functions */
 int FT_ANGLE_2PI ; 
 double FUNC0 (TYPE_1__*) ; 
 int SPI ; 
 scalar_t__ THRESHOLD ; 
 scalar_t__ FUNC1 (double) ; 
 double FUNC2 (int) ; 
 int error ; 
 int /*<<< orphan*/  FUNC3 (char*,double,double,double,double) ; 
 double FUNC4 (int) ; 

__attribute__((used)) static void
  FUNC5( void )
  {
    int  i;


    for ( i = 0; i < FT_ANGLE_2PI; i += 0x10000L )
    {
      FT_Vector  v;
      FT_Fixed   l, l2;


      l   = (FT_Fixed)(500.0*65536.0);
      v.x = (FT_Fixed)( l * FUNC2( i*SPI ) );
      v.y = (FT_Fixed)( l * FUNC4( i*SPI ) );
      l2  = FUNC0( &v );

      if ( FUNC1( l2-l ) > THRESHOLD )
      {
        error = 1;
        FUNC3( "FT_Length( %.7f, %.7f ) = %.5f, length = %.5f\n",
                v.x/65536.0, v.y/65536.0, l2/65536.0, l/65536.0 );
      }
    }
  }