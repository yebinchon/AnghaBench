
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_object(short *tiles)
{
   return (tiles[1] >= 256 || tiles[2] >= 256 || tiles[3] >= 256);
}
