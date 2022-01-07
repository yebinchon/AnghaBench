
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int channels; } ;
typedef TYPE_1__ stb_vorbis ;


 int convert_samples_short (int,short**,int ,int ,float**,int ,int) ;
 int stb_vorbis_get_frame_float (TYPE_1__*,int *,float***) ;

int stb_vorbis_get_frame_short(stb_vorbis *f, int num_c, short **buffer, int num_samples)
{
   float **output;
   int len = stb_vorbis_get_frame_float(f, ((void*)0), &output);
   if (len > num_samples) len = num_samples;
   if (len)
      convert_samples_short(num_c, buffer, 0, f->channels, output, 0, len);
   return len;
}
