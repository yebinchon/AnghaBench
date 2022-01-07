
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int* blocktype; int* lighting; unsigned char* tex2; unsigned char* vheight; int block_geometry; int block_color_face; int block_tex1_face; } ;
typedef TYPE_2__ stbvox_input_description ;
struct TYPE_17__ {int * geometry; } ;
struct TYPE_20__ {TYPE_1__ input; } ;
struct TYPE_19__ {int cx; int cy; int*** sv_blocktype; int*** sv_lighting; TYPE_4__ mm; int num_quads; int bounds; int transform; int face_buffer; int build_buffer; } ;
typedef TYPE_3__ raw_mesh ;
typedef int fast_chunk ;


 int BUILD_BUFFER_SIZE ;
 int FACE_BUFFER_SIZE ;
 int SKIP_TERRAIN ;
 unsigned char STBVOX_MAKE_VHEIGHT (int,int,int,int) ;
 int assert (int) ;
 int make_map_segment_for_superchunk_preconvert (int,int,int,int ***,int***,int***) ;
 int minecraft_color_for_blocktype ;
 int minecraft_geom_for_blocktype ;
 int minecraft_tex1_for_blocktype ;
 int rand () ;
 scalar_t__ sin (int) ;
 scalar_t__ sqrt (int) ;
 scalar_t__ stb_linear_remap (float,int,int,int,int) ;
 int stbvox_get_bounds (TYPE_4__*,int ) ;
 TYPE_2__* stbvox_get_input_description (TYPE_4__*) ;
 int stbvox_get_quad_count (TYPE_4__*,int ) ;
 int stbvox_get_transform (TYPE_4__*,int ) ;
 int stbvox_make_mesh (TYPE_4__*) ;
 int stbvox_reset_buffers (TYPE_4__*) ;
 int stbvox_set_buffer (TYPE_4__*,int ,int,int ,int ) ;
 int stbvox_set_default_mesh (TYPE_4__*,int ) ;
 int stbvox_set_input_range (TYPE_4__*,int ,int ,int,int,int,int) ;
 int stbvox_set_input_stride (TYPE_4__*,int,int) ;
 int stbvox_set_mesh_coordinates (TYPE_4__*,int,int,int ) ;

void build_chunk(int chunk_x, int chunk_y, fast_chunk *fc_table[4][4], raw_mesh *rm)
{
   int a,b,z;
   stbvox_input_description *map;






   unsigned char tex2_choice[34][34][18];


   assert((chunk_x & 1) == 0);
   assert((chunk_y & 1) == 0);

   rm->cx = chunk_x;
   rm->cy = chunk_y;

   stbvox_set_input_stride(&rm->mm, 34*18, 18);

   assert(rm->mm.input.geometry == ((void*)0));

   map = stbvox_get_input_description(&rm->mm);
   map->block_tex1_face = minecraft_tex1_for_blocktype;
   map->block_color_face = minecraft_color_for_blocktype;
   map->block_geometry = minecraft_geom_for_blocktype;

   stbvox_reset_buffers(&rm->mm);
   stbvox_set_buffer(&rm->mm, 0, 0, rm->build_buffer, BUILD_BUFFER_SIZE);
   stbvox_set_buffer(&rm->mm, 0, 1, rm->face_buffer , FACE_BUFFER_SIZE);

   map->blocktype = &rm->sv_blocktype[1][1][1];
   map->lighting = &rm->sv_lighting[1][1][1];


   for (a=0; a < 34; ++a) {
      for (b=0; b < 34; ++b) {
         rm->sv_blocktype[a][b][16] = 0;
         rm->sv_lighting [a][b][16] = 255;
         rm->sv_blocktype[a][b][17] = 0;
         rm->sv_lighting [a][b][17] = 255;
      }
   }


   for (a=0; a < 34; ++a) {
      for (b=0; b < 34; ++b) {
         int px = chunk_x*16 + a - 1;
         int py = chunk_y*16 + b - 1;
         float dist = (float) sqrt(px*px + py*py);
         float s1 = (float) sin(dist / 16), s2, s3;
         dist = (float) sqrt((px-80)*(px-80) + (py-50)*(py-50));
         s2 = (float) sin(dist / 11);
         for (z=0; z < 18; ++z) {
            s3 = (float) sin(z * 3.141592 / 8);

            s3 = s1*s2*s3;
            tex2_choice[a][b][z] = 63 & (int) stb_linear_remap(s3,-1,1, -20,83);
         }
      }
   }


   for (z=256-16; z >= SKIP_TERRAIN; z -= 16)
   {
      int z0 = z;
      int z1 = z+16;
      if (z1 == 256) z1 = 255;

      make_map_segment_for_superchunk_preconvert(chunk_x, chunk_y, z >> 4, fc_table, rm->sv_blocktype, rm->sv_lighting);

      map->blocktype = &rm->sv_blocktype[1][1][1-z];
      map->lighting = &rm->sv_lighting[1][1][1-z];

      map->tex2 = &tex2_choice[1][1][1-z];
      {
         stbvox_set_input_range(&rm->mm, 0,0,z0, 32,32,z1);
         stbvox_set_default_mesh(&rm->mm, 0);
         stbvox_make_mesh(&rm->mm);
      }


      for (a=0; a < 34; ++a) {
         for (b=0; b < 34; ++b) {
            rm->sv_blocktype[a][b][16] = rm->sv_blocktype[a][b][0];
            rm->sv_blocktype[a][b][17] = rm->sv_blocktype[a][b][1];
            rm->sv_lighting [a][b][16] = rm->sv_lighting [a][b][0];
            rm->sv_lighting [a][b][17] = rm->sv_lighting [a][b][1];
         }
      }
   }

   stbvox_set_mesh_coordinates(&rm->mm, chunk_x*16, chunk_y*16, 0);
   stbvox_get_transform(&rm->mm, rm->transform);

   stbvox_set_input_range(&rm->mm, 0,0,0, 32,32,255);
   stbvox_get_bounds(&rm->mm, rm->bounds);

   rm->num_quads = stbvox_get_quad_count(&rm->mm, 0);
}
