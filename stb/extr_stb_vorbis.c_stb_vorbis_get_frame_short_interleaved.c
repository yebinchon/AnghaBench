
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int channels; } ;
typedef TYPE_1__ stb_vorbis ;


 int convert_channels_short_interleaved (int,short*,int ,float**,int ,int) ;
 int stb_vorbis_get_frame_float (TYPE_1__*,int *,float***) ;
 int stb_vorbis_get_frame_short (TYPE_1__*,int,short**,int) ;

int stb_vorbis_get_frame_short_interleaved(stb_vorbis *f, int num_c, short *buffer, int num_shorts)
{
   float **output;
   int len;
   if (num_c == 1) return stb_vorbis_get_frame_short(f,num_c,&buffer, num_shorts);
   len = stb_vorbis_get_frame_float(f, ((void*)0), &output);
   if (len) {
      if (len*num_c > num_shorts) len = num_shorts / num_c;
      convert_channels_short_interleaved(num_c, buffer, f->channels, output, 0, len);
   }
   return len;
}
