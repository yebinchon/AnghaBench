
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_platform (short*) ;

__attribute__((used)) static float prop_range(int n, short *tiles, int is_max)
{
   if (is_platform(tiles)) {
      static float ranges[8][2] = {
         { 0, 1 },
         { -15, 15 },
         { -15, 15 },
         { 0, 6 },
         { 0, 10 },
         { 0, 10 },
         { 0, 1 },
         { 0, 1 },
      };
      return ranges[n][is_max];
   }
   return 0;
}
