
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* remap ;
 int** remap_data ;

void remap_in_place(int bt, int rm)
{
   int i;
   remap[bt] = rm;
   for (i=0; i < 16; ++i)
      remap_data[rm][i] = bt;
}
