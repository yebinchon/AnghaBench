
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; int z; int ** sector_data; } ;
typedef TYPE_1__ region ;


 int NUM_CHUNKS_PER_REGION ;
 int SEEK_SET ;
 int fseek (int *,int ,int ) ;
 int * last_region ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int open_file (int,int) ;
 int read_uint32_be (int *) ;

__attribute__((used)) static region *load_region(int reg_x, int reg_z)
{
   region *r;
   int x,z;

   open_file(reg_x, reg_z);

   r = malloc(sizeof(*r));

   if (last_region == ((void*)0)) {
      memset(r, 0, sizeof(*r));
   } else {
      fseek(last_region, 0, SEEK_SET);
      for (z=0; z < NUM_CHUNKS_PER_REGION; ++z)
         for (x=0; x < NUM_CHUNKS_PER_REGION; ++x)
            r->sector_data[z][x] = read_uint32_be(last_region);
   }
   r->x = reg_x;
   r->z = reg_z;

   return r;
}
