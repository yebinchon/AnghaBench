
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STBVOX_GEOM_ceil_slope_north_is_bottom ;
 int STBVOX_GEOM_floor_slope_north_is_top ;
 scalar_t__ STBVOX_MAKE_GEOMETRY (int ,int ,int ) ;
 int ** minecraft_color_for_blocktype ;
 unsigned char* minecraft_geom_for_blocktype ;
 int ** minecraft_tex1_for_blocktype ;
 size_t next_blocktype ;

void build_stair_rotations(int blocktype, unsigned char *map)
{
   int i;


   for (i=0; i < 6; ++i) {
      minecraft_color_for_blocktype[next_blocktype][i] = minecraft_color_for_blocktype[blocktype][i];
      minecraft_tex1_for_blocktype [next_blocktype][i] = minecraft_tex1_for_blocktype [blocktype][i];
   }
   minecraft_geom_for_blocktype[next_blocktype] = (unsigned char) STBVOX_MAKE_GEOMETRY(STBVOX_GEOM_ceil_slope_north_is_bottom, 0, 0);
   minecraft_geom_for_blocktype[ blocktype] = (unsigned char) STBVOX_MAKE_GEOMETRY(STBVOX_GEOM_floor_slope_north_is_top, 0, 0);

   for (i=0; i < 4; ++i) {
      map[0+i+8] = map[0+i] = blocktype;
      map[4+i+8] = map[4+i] = next_blocktype;
   }
   --next_blocktype;
}
