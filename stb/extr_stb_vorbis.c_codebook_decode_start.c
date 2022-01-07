
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ last_seg; int bytes_in_seg; } ;
typedef TYPE_1__ vorb ;
struct TYPE_9__ {scalar_t__ lookup_type; int sorted_entries; scalar_t__ sparse; } ;
typedef TYPE_2__ Codebook ;


 int DECODE_VQ (int,TYPE_1__*,TYPE_2__*) ;
 int VORBIS_invalid_stream ;
 int assert (int) ;
 int error (TYPE_1__*,int ) ;

__attribute__((used)) static int codebook_decode_start(vorb *f, Codebook *c)
{
   int z = -1;


   if (c->lookup_type == 0)
      error(f, VORBIS_invalid_stream);
   else {
      DECODE_VQ(z,f,c);
      if (c->sparse) assert(z < c->sorted_entries);
      if (z < 0) {
         if (!f->bytes_in_seg)
            if (f->last_seg)
               return z;
         error(f, VORBIS_invalid_stream);
      }
   }
   return z;
}
