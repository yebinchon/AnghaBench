
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int stb_not_crap(int best, int dist)
{
   return ((best > 2 && dist <= 0x00100)
          || (best > 5 && dist <= 0x04000)
          || (best > 7 && dist <= 0x80000));
}
