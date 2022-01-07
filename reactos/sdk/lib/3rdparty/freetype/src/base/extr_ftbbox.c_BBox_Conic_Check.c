
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ FT_Pos ;


 scalar_t__ FT_MulDiv (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
  BBox_Conic_Check( FT_Pos y1,
                    FT_Pos y2,
                    FT_Pos y3,
                    FT_Pos* min,
                    FT_Pos* max )
  {





    y1 -= y2;
    y3 -= y2;
    y2 += FT_MulDiv( y1, y3, y1 + y3 );

    if ( y2 < *min )
      *min = y2;
    if ( y2 > *max )
      *max = y2;
  }
