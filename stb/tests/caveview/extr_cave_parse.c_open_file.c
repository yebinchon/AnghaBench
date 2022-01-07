
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int * last_region ;
 int last_region_x ;
 int last_region_z ;
 int opened ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static void open_file(int reg_x, int reg_z)
{
   if (!opened || last_region_x != reg_x || last_region_z != reg_z) {
      char filename[256];
      if (last_region != ((void*)0))
         fclose(last_region);
      sprintf(filename, "r.%d.%d.mca", reg_x, reg_z);
      last_region = fopen(filename, "rb");
      last_region_x = reg_x;
      last_region_z = reg_z;
      opened = 1;
   }
}
