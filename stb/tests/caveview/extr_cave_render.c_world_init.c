
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef float Uint64 ;
struct TYPE_2__ {scalar_t__ state; } ;


 int SDL_Delay (int) ;
 float SDL_GetPerformanceCounter () ;
 scalar_t__ SDL_GetPerformanceFrequency () ;
 scalar_t__ WSTATE_idle ;
 TYPE_1__* mesh_data ;
 int num_mesh_workers ;
 int ods (char*,float) ;
 int request_chunk (int,int) ;
 int reset_cache_size (int) ;
 int update_meshes_from_render_thread () ;

void world_init(void)
{
   int a,b,x,y;

   Uint64 start_time, end_time;



   int range = 12;


   start_time = SDL_GetPerformanceCounter();




   for (x=-range; x <= range; x += 16)
      for (y=-range; y <= range; y += 16)
         for (b=y; b < y+16 && b <= range; b += 2)
            for (a=x; a < x+16 && a <= range; a += 2)
               while (!request_chunk(a, b)) {
                  update_meshes_from_render_thread();
                  SDL_Delay(1);
               }






   for(;;) {
      int i;
      update_meshes_from_render_thread();
      for (i=0; i < num_mesh_workers; ++i)
         if (mesh_data[i].state != WSTATE_idle)
            break;
      if (i == num_mesh_workers)
         break;
      SDL_Delay(3);
   }

   end_time = SDL_GetPerformanceCounter();
   ods("Build time: %7.2fs\n", (end_time - start_time) / (float) SDL_GetPerformanceFrequency());




   reset_cache_size(32);
}
