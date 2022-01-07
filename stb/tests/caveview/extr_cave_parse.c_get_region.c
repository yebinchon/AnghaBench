
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int x; int z; } ;
typedef TYPE_1__ region ;


 int MAX_MAP_REGIONS ;
 int free_region (TYPE_1__*) ;
 TYPE_1__* load_region (int,int) ;
 TYPE_1__*** regions ;

__attribute__((used)) static region *get_region(int reg_x, int reg_z)
{
   int slot_x = reg_x & (MAX_MAP_REGIONS-1);
   int slot_z = reg_z & (MAX_MAP_REGIONS-1);
   region *r;

   r = regions[slot_z][slot_x];

   if (r) {
      if (r->x == reg_x && r->z == reg_z)
         return r;
      free_region(r);
   }

   r = load_region(reg_x, reg_z);
   regions[slot_z][slot_x] = r;

   return r;
}
