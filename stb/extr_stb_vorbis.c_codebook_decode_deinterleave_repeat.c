
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ last_seg; int bytes_in_seg; } ;
typedef TYPE_1__ vorb ;
struct TYPE_11__ {int dimensions; int lookup_type; int sorted_entries; int lookup_values; scalar_t__ sequence_p; int sparse; } ;
typedef TYPE_2__ Codebook ;


 float CODEBOOK_ELEMENT_BASE (TYPE_2__*) ;
 float CODEBOOK_ELEMENT_FAST (TYPE_2__*,int) ;
 int DECODE_VQ (int,TYPE_1__*,TYPE_2__*) ;
 int FALSE ;
 int TRUE ;
 int VORBIS_invalid_stream ;
 int assert (int) ;
 int error (TYPE_1__*,int ) ;

__attribute__((used)) static int codebook_decode_deinterleave_repeat(vorb *f, Codebook *c, float **outputs, int ch, int *c_inter_p, int *p_inter_p, int len, int total_decode)
{
   int c_inter = *c_inter_p;
   int p_inter = *p_inter_p;
   int i,z, effective = c->dimensions;


   if (c->lookup_type == 0) return error(f, VORBIS_invalid_stream);

   while (total_decode > 0) {
      float last = CODEBOOK_ELEMENT_BASE(c);
      DECODE_VQ(z,f,c);

      assert(!c->sparse || z < c->sorted_entries);

      if (z < 0) {
         if (!f->bytes_in_seg)
            if (f->last_seg) return FALSE;
         return error(f, VORBIS_invalid_stream);
      }





      if (c_inter + p_inter*ch + effective > len * ch) {
         effective = len*ch - (p_inter*ch - c_inter);
      }
      {
         z *= c->dimensions;
         if (c->sequence_p) {
            for (i=0; i < effective; ++i) {
               float val = CODEBOOK_ELEMENT_FAST(c,z+i) + last;
               if (outputs[c_inter])
                  outputs[c_inter][p_inter] += val;
               if (++c_inter == ch) { c_inter = 0; ++p_inter; }
               last = val;
            }
         } else {
            for (i=0; i < effective; ++i) {
               float val = CODEBOOK_ELEMENT_FAST(c,z+i) + last;
               if (outputs[c_inter])
                  outputs[c_inter][p_inter] += val;
               if (++c_inter == ch) { c_inter = 0; ++p_inter; }
            }
         }
      }

      total_decode -= effective;
   }
   *c_inter_p = c_inter;
   *p_inter_p = p_inter;
   return TRUE;
}
