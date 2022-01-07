
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ FT_Pos ;


 scalar_t__ cubic_peak (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
  BBox_Cubic_Check( FT_Pos p1,
                    FT_Pos p2,
                    FT_Pos p3,
                    FT_Pos p4,
                    FT_Pos* min,
                    FT_Pos* max )
  {





    if ( p2 > *max || p3 > *max )
      *max += cubic_peak( p1 - *max, p2 - *max, p3 - *max, p4 - *max );


    if ( p2 < *min || p3 < *min )
      *min -= cubic_peak( *min - p1, *min - p2, *min - p3, *min - p4 );
  }
