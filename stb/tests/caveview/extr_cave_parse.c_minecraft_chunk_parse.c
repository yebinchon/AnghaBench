
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_14__ {int block; int light; int data; int skylight; } ;
typedef TYPE_1__ raw_block ;
struct TYPE_15__ {unsigned char* pointer_to_free; int max_y; int xpos; int zpos; int** blockdata; int** data; int** light; int** skylight; TYPE_1__*** rb; } ;
typedef TYPE_2__ parse_chunk ;
struct TYPE_16__ {unsigned char* buffer_start; unsigned char* buffer_end; unsigned char* cur; scalar_t__ nesting; } ;
typedef TYPE_3__ nbt ;


 int TAG_Byte ;
 int TAG_Byte_Array ;
 int TAG_Compound ;
 int TAG_Int ;
 int TAG_Int_Array ;
 int assert (int) ;
 TYPE_2__* malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int nbt_begin_compound (TYPE_3__*) ;
 int nbt_begin_compound_in_list (TYPE_3__*) ;
 int nbt_begin_list (TYPE_3__*,int ) ;
 int nbt_end_compound (TYPE_3__*) ;
 int* nbt_get (TYPE_3__*,int ,...) ;
 char* nbt_peek (TYPE_3__*) ;
 int nbt_skip (TYPE_3__*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static parse_chunk *minecraft_chunk_parse(unsigned char *data, size_t len)
{
   char *s;
   parse_chunk *c = ((void*)0);

   nbt n_store, *n = &n_store;
   n->buffer_start = data;
   n->buffer_end = data + len;
   n->cur = n->buffer_start;
   n->nesting = 0;

   nbt_begin_compound(n);
   while ((s = nbt_peek(n)) != ((void*)0)) {
      if (!strcmp(s, "Level")) {
         int *height;
         c = malloc(sizeof(*c));




         c->rb[15][15][255].block = 0;

         c->max_y = 0;

         nbt_begin_compound(n);
         while ((s = nbt_peek(n)) != ((void*)0)) {
            if (!strcmp(s, "xPos"))
               c->xpos = *(int *) nbt_get(n, TAG_Int, 0);
            else if (!strcmp(s, "zPos"))
               c->zpos = *(int *) nbt_get(n, TAG_Int, 0);
            else if (!strcmp(s, "Sections")) {
               int count = nbt_begin_list(n, TAG_Compound), i;
               if (count == -1) {




                  nbt_skip(n);
                  count = -1;
               }
               for (i=0; i < count; ++i) {
                  int yi, len;
                  uint8 *light = ((void*)0), *blocks = ((void*)0), *data = ((void*)0), *skylight = ((void*)0);
                  nbt_begin_compound_in_list(n);
                  while ((s = nbt_peek(n)) != ((void*)0)) {
                     if (!strcmp(s, "Y"))
                        yi = * (uint8 *) nbt_get(n, TAG_Byte, 0);
                     else if (!strcmp(s, "BlockLight")) {
                        light = nbt_get(n, TAG_Byte_Array, &len);
                        assert(len == 2048);
                     } else if (!strcmp(s, "Blocks")) {
                        blocks = nbt_get(n, TAG_Byte_Array, &len);
                        assert(len == 4096);
                     } else if (!strcmp(s, "Data")) {
                        data = nbt_get(n, TAG_Byte_Array, &len);
                        assert(len == 2048);
                     } else if (!strcmp(s, "SkyLight")) {
                        skylight = nbt_get(n, TAG_Byte_Array, &len);
                        assert(len == 2048);
                     }
                  }
                  nbt_end_compound(n);

                  assert(yi < 16);




                  {
                     int x,z;
                     while (c->max_y < yi*16) {
                        for (x=0; x < 16; ++x)
                           for (z=0; z < 16; ++z)
                              c->rb[z][x][c->max_y].block = 0;
                        ++c->max_y;
                     }
                  }


                  {
                     int x,y,z, o2=0,o4=0;
                     for (y=0; y < 16; ++y) {
                        for (z=0; z < 16; ++z) {
                           for (x=0; x < 16; x += 2) {
                              raw_block *rb = &c->rb[15-z][x][y + yi*16];
                              rb[0].block = blocks[o4];
                              rb[0].light = light[o2] & 15;
                              rb[0].data = data[o2] & 15;
                              rb[0].skylight = skylight[o2] & 15;

                              rb[256].block = blocks[o4+1];
                              rb[256].light = light[o2] >> 4;
                              rb[256].data = data[o2] >> 4;
                              rb[256].skylight = skylight[o2] >> 4;

                              o2 += 1;
                              o4 += 2;
                           }
                        }
                     }
                     c->max_y += 16;
                  }






               }

            } else if (!strcmp(s, "HeightMap")) {
               height = nbt_get(n, TAG_Int_Array, &len);
               assert(len == 256);
            } else
               nbt_skip(n);
         }
         nbt_end_compound(n);

      } else
         nbt_skip(n);
   }
   nbt_end_compound(n);
   assert(n->cur == n->buffer_end);
   return c;
}
