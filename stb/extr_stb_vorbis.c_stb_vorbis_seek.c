
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int uint32 ;
struct TYPE_5__ {unsigned int current_loc; scalar_t__ channel_buffer_start; scalar_t__ channel_buffer_end; } ;
typedef TYPE_1__ stb_vorbis ;


 int assert (int) ;
 int stb_vorbis_get_frame_float (TYPE_1__*,int*,int *) ;
 int stb_vorbis_seek_frame (TYPE_1__*,unsigned int) ;

int stb_vorbis_seek(stb_vorbis *f, unsigned int sample_number)
{
   if (!stb_vorbis_seek_frame(f, sample_number))
      return 0;

   if (sample_number != f->current_loc) {
      int n;
      uint32 frame_start = f->current_loc;
      stb_vorbis_get_frame_float(f, &n, ((void*)0));
      assert(sample_number > frame_start);
      assert(f->channel_buffer_start + (int) (sample_number-frame_start) <= f->channel_buffer_end);
      f->channel_buffer_start += (sample_number - frame_start);
   }

   return 1;
}
