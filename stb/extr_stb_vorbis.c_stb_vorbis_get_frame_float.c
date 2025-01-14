
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int channel_buffer_start; int channel_buffer_end; int channels; float** outputs; float** channel_buffers; } ;
typedef TYPE_1__ stb_vorbis ;


 scalar_t__ IS_PUSH_MODE (TYPE_1__*) ;
 int VORBIS_invalid_api_mixing ;
 int error (TYPE_1__*,int ) ;
 int vorbis_decode_packet (TYPE_1__*,int*,int*,int*) ;
 int vorbis_finish_frame (TYPE_1__*,int,int,int) ;

int stb_vorbis_get_frame_float(stb_vorbis *f, int *channels, float ***output)
{
   int len, right,left,i;
   if (IS_PUSH_MODE(f)) return error(f, VORBIS_invalid_api_mixing);

   if (!vorbis_decode_packet(f, &len, &left, &right)) {
      f->channel_buffer_start = f->channel_buffer_end = 0;
      return 0;
   }

   len = vorbis_finish_frame(f, len, left, right);
   for (i=0; i < f->channels; ++i)
      f->outputs[i] = f->channel_buffers[i] + left;

   f->channel_buffer_start = left;
   f->channel_buffer_end = left+len;

   if (channels) *channels = f->channels;
   if (output) *output = f->outputs;
   return len;
}
