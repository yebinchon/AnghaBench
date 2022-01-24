#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int* blocktype; int* lighting; unsigned char* tex2; unsigned char* vheight; int /*<<< orphan*/  block_geometry; int /*<<< orphan*/  block_color_face; int /*<<< orphan*/  block_tex1_face; } ;
typedef  TYPE_2__ stbvox_input_description ;
struct TYPE_17__ {int /*<<< orphan*/ * geometry; } ;
struct TYPE_20__ {TYPE_1__ input; } ;
struct TYPE_19__ {int cx; int cy; int*** sv_blocktype; int*** sv_lighting; TYPE_4__ mm; int /*<<< orphan*/  num_quads; int /*<<< orphan*/  bounds; int /*<<< orphan*/  transform; int /*<<< orphan*/  face_buffer; int /*<<< orphan*/  build_buffer; } ;
typedef  TYPE_3__ raw_mesh ;
typedef  int /*<<< orphan*/  fast_chunk ;

/* Variables and functions */
 int /*<<< orphan*/  BUILD_BUFFER_SIZE ; 
 int /*<<< orphan*/  FACE_BUFFER_SIZE ; 
 int SKIP_TERRAIN ; 
 unsigned char FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int /*<<< orphan*/ ***,int***,int***) ; 
 int /*<<< orphan*/  minecraft_color_for_blocktype ; 
 int /*<<< orphan*/  minecraft_geom_for_blocktype ; 
 int /*<<< orphan*/  minecraft_tex1_for_blocktype ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (float,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int,int,int /*<<< orphan*/ ) ; 

void FUNC18(int chunk_x, int chunk_y, fast_chunk *fc_table[4][4], raw_mesh *rm)
{
   int a,b,z;
   stbvox_input_description *map;

   #ifdef VHEIGHT_TEST
   unsigned char vheight[34][34][18];
   #endif

   #ifndef STBVOX_CONFIG_DISABLE_TEX2
   unsigned char tex2_choice[34][34][18];
   #endif

   FUNC1((chunk_x & 1) == 0);
   FUNC1((chunk_y & 1) == 0);

   rm->cx = chunk_x;
   rm->cy = chunk_y;

   FUNC16(&rm->mm, 34*18, 18);

   FUNC1(rm->mm.input.geometry == NULL);

   map = FUNC8(&rm->mm);
   map->block_tex1_face = minecraft_tex1_for_blocktype;
   map->block_color_face = minecraft_color_for_blocktype;
   map->block_geometry = minecraft_geom_for_blocktype;

   FUNC12(&rm->mm);
   FUNC13(&rm->mm, 0, 0, rm->build_buffer, BUILD_BUFFER_SIZE);
   FUNC13(&rm->mm, 0, 1, rm->face_buffer , FACE_BUFFER_SIZE);

   map->blocktype = &rm->sv_blocktype[1][1][1]; // this is (0,0,0), but we need to be able to query off the edges
   map->lighting = &rm->sv_lighting[1][1][1];

   // fill in the top two rows of the buffer
   for (a=0; a < 34; ++a) {
      for (b=0; b < 34; ++b) {
         rm->sv_blocktype[a][b][16] = 0;
         rm->sv_lighting [a][b][16] = 255;
         rm->sv_blocktype[a][b][17] = 0;
         rm->sv_lighting [a][b][17] = 255;
      }
   }

   #ifndef STBVOX_CONFIG_DISABLE_TEX2
   for (a=0; a < 34; ++a) {
      for (b=0; b < 34; ++b) {
         int px = chunk_x*16 + a - 1;
         int py = chunk_y*16 + b - 1;
         float dist = (float) FUNC5(px*px + py*py);
         float s1 = (float) FUNC4(dist / 16), s2, s3;
         dist = (float) FUNC5((px-80)*(px-80) + (py-50)*(py-50));
         s2 = (float) FUNC4(dist / 11);
         for (z=0; z < 18; ++z) {
            s3 = (float) FUNC4(z * 3.141592 / 8);

            s3 = s1*s2*s3;
            tex2_choice[a][b][z] = 63 & (int) FUNC6(s3,-1,1, -20,83);
         }
      }
   }
   #endif

   for (z=256-16; z >= SKIP_TERRAIN; z -= 16)
   {
      int z0 = z;
      int z1 = z+16;
      if (z1 == 256) z1 = 255;

      FUNC2(chunk_x, chunk_y, z >> 4, fc_table, rm->sv_blocktype, rm->sv_lighting);

      map->blocktype = &rm->sv_blocktype[1][1][1-z]; // specify location of 0,0,0 so that accessing z0..z1 gets right data
      map->lighting = &rm->sv_lighting[1][1][1-z];
      #ifndef STBVOX_CONFIG_DISABLE_TEX2
      map->tex2 = &tex2_choice[1][1][1-z];
      #endif

      #ifdef VHEIGHT_TEST
      // hacky test of vheight
      for (a=0; a < 34; ++a) {
         for (b=0; b < 34; ++b) {
            int c;
            for (c=0; c < 17; ++c) {
               if (rm->sv_blocktype[a][b][c] != 0 && rm->sv_blocktype[a][b][c+1] == 0) {
                  // topmost block
                  vheight[a][b][c] = rand() & 255;
                  rm->sv_blocktype[a][b][c] = 168;
               } else if (c > 0 && rm->sv_blocktype[a][b][c] != 0 && rm->sv_blocktype[a][b][c-1] == 0) {
                  // bottommost block
                  vheight[a][b][c] = ((rand() % 3) << 6) + ((rand() % 3) << 4) + ((rand() % 3) << 2) + (rand() % 3);
                  rm->sv_blocktype[a][b][c] = 169;
               }
            }
            vheight[a][b][c] = STBVOX_MAKE_VHEIGHT(2,2,2,2); // flat top
         }
      }
      map->vheight = &vheight[1][1][1-z];
      #endif

      {
         FUNC15(&rm->mm, 0,0,z0, 32,32,z1);
         FUNC14(&rm->mm, 0);
         FUNC11(&rm->mm);
      }

      // copy the bottom two rows of data up to the top
      for (a=0; a < 34; ++a) {
         for (b=0; b < 34; ++b) {
            rm->sv_blocktype[a][b][16] = rm->sv_blocktype[a][b][0];
            rm->sv_blocktype[a][b][17] = rm->sv_blocktype[a][b][1];
            rm->sv_lighting [a][b][16] = rm->sv_lighting [a][b][0];
            rm->sv_lighting [a][b][17] = rm->sv_lighting [a][b][1];
         }
      }
   }

   FUNC17(&rm->mm, chunk_x*16, chunk_y*16, 0);
   FUNC10(&rm->mm, rm->transform);

   FUNC15(&rm->mm, 0,0,0, 32,32,255);
   FUNC7(&rm->mm, rm->bounds);

   rm->num_quads = FUNC9(&rm->mm, 0);
}