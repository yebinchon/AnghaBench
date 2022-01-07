
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int max_frame_size; int temp_memory_required; int setup_temp_memory_required; int setup_memory_required; int sample_rate; int channels; } ;
typedef TYPE_1__ stb_vorbis_info ;
struct TYPE_6__ {int blocksize_1; int temp_memory_required; int setup_temp_memory_required; int setup_memory_required; int sample_rate; int channels; } ;
typedef TYPE_2__ stb_vorbis ;



stb_vorbis_info stb_vorbis_get_info(stb_vorbis *f)
{
   stb_vorbis_info d;
   d.channels = f->channels;
   d.sample_rate = f->sample_rate;
   d.setup_memory_required = f->setup_memory_required;
   d.setup_temp_memory_required = f->setup_temp_memory_required;
   d.temp_memory_required = f->temp_memory_required;
   d.max_frame_size = f->blocksize_1 >> 1;
   return d;
}
