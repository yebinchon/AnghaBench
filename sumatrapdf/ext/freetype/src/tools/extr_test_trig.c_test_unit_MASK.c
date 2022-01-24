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
typedef  scalar_t__ FT_Fixed ;

/* Variables and functions */
 int FT_ANGLE_2PI ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int SPI ; 
 scalar_t__ THRESHOLD ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 double FUNC2 (double) ; 
 int error ; 
 int /*<<< orphan*/  FUNC3 (char*,int,double,double,double,double) ; 
 double FUNC4 (double) ; 

__attribute__((used)) static void
  FUNC5( void )
  {
    int  i;


    for ( i = 0; i < FT_ANGLE_2PI; i += 0x10000L )
    {
      FT_Vector  v;
      double     a, c1, s1;
      FT_Fixed   c2, s2;


      FUNC0( &v, i );
      a  = ( i*SPI );
      c1 = FUNC2(a);
      s1 = FUNC4(a);
      c2 = (FT_Fixed)(c1*65536.0);
      s2 = (FT_Fixed)(s1*65536.0);

      if ( FUNC1( v.x-c2 ) > THRESHOLD ||
           FUNC1( v.y-s2 ) > THRESHOLD )
      {
        error = 1;
        FUNC3( "FT_Vector_Unit[%3d] = ( %.7f, %.7f )  vec = ( %.7f, %.7f )\n",
                (i >> 16),
                v.x/65536.0, v.y/65536.0,
                c1, s1 );
      }
    }
  }