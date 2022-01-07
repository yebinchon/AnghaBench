
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char** blockdata; unsigned char** data; unsigned char** light; unsigned char** skylight; unsigned char* pointer_to_free; } ;
typedef TYPE_1__ fast_chunk ;


 unsigned char STBVOX_MAKE_LIGHTING_EXT (unsigned char,unsigned char) ;
 unsigned char* effective_blocktype ;
 int free (unsigned char*) ;
 unsigned char* malloc (int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int* remap ;
 unsigned char** remap_data ;
 unsigned char* rotate_data ;

void convert_fastchunk_inplace(fast_chunk *fc)
{
   int i;
   int num_blocks=0, step=0;
   unsigned char rot[4096];

   unsigned char *storage;


   memset(rot, 0, 4096);

   for (i=0; i < 16; ++i)
      num_blocks += fc->blockdata[i] != ((void*)0);


   storage = malloc(16*16*16*2 * num_blocks);


   for (i=0; i < 16; ++i) {
      if (fc->blockdata[i]) {
         int o=0;
         unsigned char *bd,*dd,*lt,*sky;
         unsigned char *out, *outb;


         bd = fc->blockdata[i];
         dd = fc->data[i];
         lt = fc->light[i];
         sky = fc->skylight[i];




         out = storage + 16*16*16*2*step;



         for (o=0; o < 16*16*16/2; o += 1) {
            unsigned char v1,v2;
            unsigned char d = dd[o];
            v1 = bd[o*2+0];
            v2 = bd[o*2+1];

            if (remap[v1])
            {

               v1 = remap_data[remap[v1]][d&15];
               rot[o*2+0] = rotate_data[d&3];
            } else
               v1 = effective_blocktype[v1];

            if (remap[v2])
            {

               v2 = remap_data[remap[v2]][d>>4];
               rot[o*2+1] = rotate_data[(d>>4)&3];
            } else
               v2 = effective_blocktype[v2];

            out[o*2+0] = v1;
            out[o*2+1] = v2;
         }



         outb = out + 16*16*16;
         ++step;



         if (dd < sky && sky < lt) {





            for (o=0; o < 16*16*16/2; ++o) {
               int bright;
               bright = (lt[o]&15)*12 + 15 + (sky[o]&15)*16;
               if (bright > 255) bright = 255;
               if (bright < 32) bright = 32;
               outb[o*2+0] = STBVOX_MAKE_LIGHTING_EXT((unsigned char) bright, (rot[o*2+0]&3));

               bright = (lt[o]>>4)*12 + 15 + (sky[o]>>4)*16;
               if (bright > 255) bright = 255;
               if (bright < 32) bright = 32;
               outb[o*2+1] = STBVOX_MAKE_LIGHTING_EXT((unsigned char) bright, (rot[o*2+1]&3));
            }
         } else {







            for (o=0; o < 16*16*16/2; ++o) {
               int bright;
               bright = (lt[o]&15)*12 + 15 + (sky[o]&15)*16;
               if (bright > 255) bright = 255;
               if (bright < 32) bright = 32;
               rot[o*2+0] = STBVOX_MAKE_LIGHTING_EXT((unsigned char) bright, (rot[o*2+0]&3));

               bright = (lt[o]>>4)*12 + 15 + (sky[o]>>4)*16;
               if (bright > 255) bright = 255;
               if (bright < 32) bright = 32;
               rot[o*2+1] = STBVOX_MAKE_LIGHTING_EXT((unsigned char) bright, (rot[o*2+1]&3));
            }

            memcpy(outb, rot, 4096);
            fc->data[i] = outb;
         }


         fc->blockdata[i] = out;
         fc->data[i] = outb;

      }
   }


   free(fc->pointer_to_free);
   fc->pointer_to_free = storage;

}
