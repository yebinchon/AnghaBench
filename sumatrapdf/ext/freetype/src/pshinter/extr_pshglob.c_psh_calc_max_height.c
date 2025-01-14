
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_UInt ;
typedef scalar_t__ FT_Short ;



__attribute__((used)) static FT_Short
  psh_calc_max_height( FT_UInt num,
                       const FT_Short* values,
                       FT_Short cur_max )
  {
    FT_UInt count;


    for ( count = 0; count < num; count += 2 )
    {
      FT_Short cur_height = values[count + 1] - values[count];


      if ( cur_height > cur_max )
        cur_max = cur_height;
    }

    return cur_max;
  }
