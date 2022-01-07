
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb__window ;

void stb_compress_window(int z)
{
   if (z >= 0x1000000) z = 0x1000000;
   if (z < 0x100) z = 0x100;
   stb__window = z;
}
