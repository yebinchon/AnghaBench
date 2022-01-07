
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_10__ {int current_loc_valid; unsigned int current_loc; int blocksize_1; int blocksize_0; scalar_t__ previous_length; } ;
typedef TYPE_1__ stb_vorbis ;


 scalar_t__ IS_PUSH_MODE (TYPE_1__*) ;
 int VORBIS_invalid_api_mixing ;
 int VORBIS_seek_failed ;
 int assert (int) ;
 int error (TYPE_1__*,int ) ;
 int flush_packet (TYPE_1__*) ;
 int maybe_start_packet (TYPE_1__*) ;
 int peek_decode_initial (TYPE_1__*,int*,int*,int*,int*,int*) ;
 int seek_to_sample_coarse (TYPE_1__*,unsigned int) ;
 int vorbis_pump_first_frame (TYPE_1__*) ;

int stb_vorbis_seek_frame(stb_vorbis *f, unsigned int sample_number)
{
   uint32 max_frame_samples;

   if (IS_PUSH_MODE(f)) return error(f, VORBIS_invalid_api_mixing);


   if (!seek_to_sample_coarse(f, sample_number))
      return 0;

   assert(f->current_loc_valid);
   assert(f->current_loc <= sample_number);


   max_frame_samples = (f->blocksize_1*3 - f->blocksize_0) >> 2;
   while (f->current_loc < sample_number) {
      int left_start, left_end, right_start, right_end, mode, frame_samples;
      if (!peek_decode_initial(f, &left_start, &left_end, &right_start, &right_end, &mode))
         return error(f, VORBIS_seek_failed);

      frame_samples = right_start - left_start;
      if (f->current_loc + frame_samples > sample_number) {
         return 1;
      } else if (f->current_loc + frame_samples + max_frame_samples > sample_number) {

         vorbis_pump_first_frame(f);
      } else {

         f->current_loc += frame_samples;
         f->previous_length = 0;
         maybe_start_packet(f);
         flush_packet(f);
      }
   }

   assert(f->current_loc == sample_number);
   return 1;
}
