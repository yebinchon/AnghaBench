
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vorb ;
struct TYPE_6__ {int dimensions; int lookup_type; int lookup_values; scalar_t__ sequence_p; } ;
typedef TYPE_1__ Codebook ;


 float CODEBOOK_ELEMENT_BASE (TYPE_1__*) ;
 float CODEBOOK_ELEMENT_FAST (TYPE_1__*,int) ;
 int FALSE ;
 int TRUE ;
 int codebook_decode_start (int *,TYPE_1__*) ;

__attribute__((used)) static int codebook_decode_step(vorb *f, Codebook *c, float *output, int len, int step)
{
   int i,z = codebook_decode_start(f,c);
   float last = CODEBOOK_ELEMENT_BASE(c);
   if (z < 0) return FALSE;
   if (len > c->dimensions) len = c->dimensions;
   z *= c->dimensions;
   for (i=0; i < len; ++i) {
      float val = CODEBOOK_ELEMENT_FAST(c,z+i) + last;
      output[i*step] += val;
      if (c->sequence_p) last = val;
   }

   return TRUE;
}
