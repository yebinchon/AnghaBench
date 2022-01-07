
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t C_empty ;
 void* SDL_CreateMutex () ;
 int STBVOX_GEOM_ceil_vheight_03 ;
 int STBVOX_GEOM_floor_vheight_12 ;
 int build_stair_rotations (int,int ) ;
 int build_wood_variations (int,int ) ;
 int build_wool_variations (int,int ) ;
 void* chunk_cache_mutex ;
 void* chunk_get_mutex ;
 int* effective_blocktype ;
 int * geom_map ;
 int memcpy (int*,size_t*,int) ;
 int** minecraft_color_for_blocktype ;
 int * minecraft_geom_for_blocktype ;
 size_t** minecraft_info ;
 int** minecraft_tex1_for_blocktype ;
 int* remap ;
 int * remap_data ;
 int remap_in_place (int,int) ;

void mesh_init(void)
{
   int i;

   chunk_cache_mutex = SDL_CreateMutex();
   chunk_get_mutex = SDL_CreateMutex();

   for (i=0; i < 256; ++i) {
      memcpy(minecraft_tex1_for_blocktype[i], minecraft_info[i]+1, 6);
      effective_blocktype[i] = (minecraft_info[i][0] == C_empty ? 0 : i);
      minecraft_geom_for_blocktype[i] = geom_map[minecraft_info[i][0]];
   }


   for (i=0; i < 6*256; ++i) {
      if (minecraft_tex1_for_blocktype[0][i] == 40)
         minecraft_color_for_blocktype[0][i] = 38 | 64;
      if (minecraft_tex1_for_blocktype[0][i] == 39)
         minecraft_color_for_blocktype[0][i] = 39 | 64;
      if (minecraft_tex1_for_blocktype[0][i] == 105)
         minecraft_color_for_blocktype[0][i] = 63;
      if (minecraft_tex1_for_blocktype[0][i] == 212)
         minecraft_color_for_blocktype[0][i] = 63;
      if (minecraft_tex1_for_blocktype[0][i] == 80)
         minecraft_color_for_blocktype[0][i] = 63;
   }

   for (i=0; i < 6; ++i) {
      minecraft_color_for_blocktype[172][i] = 47 | 64;
      minecraft_color_for_blocktype[178][i] = 47 | 64;
      minecraft_color_for_blocktype[18][i] = 39 | 64;
      minecraft_color_for_blocktype[161][i] = 37 | 64;
      minecraft_color_for_blocktype[10][i] = 63;
      minecraft_color_for_blocktype[11][i] = 63;

      minecraft_color_for_blocktype[48][i] = 63;
   }
   remap[53] = 1;
   remap[67] = 2;
   remap[108] = 3;
   remap[109] = 4;
   remap[114] = 5;
   remap[136] = 6;
   remap[156] = 7;
   for (i=0; i < 256; ++i)
      if (remap[i])
         build_stair_rotations(i, remap_data[remap[i]]);
   remap[35] = 8;
   build_wool_variations(35, remap_data[remap[35]]);
   remap[5] = 11;
   build_wood_variations(5, remap_data[remap[5]]);


   remap_in_place(54, 9);
   remap_in_place(146, 10);
}
