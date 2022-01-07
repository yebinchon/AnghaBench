
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_platform ;
 int O_vplatform ;

__attribute__((used)) static int is_platform(short *tiles)
{

   return tiles[2] == 256 + O_platform || tiles[2] == 256 + O_vplatform;
}
