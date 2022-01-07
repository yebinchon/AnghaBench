
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ channel_buffer_end; scalar_t__ channel_buffer_start; scalar_t__ samples_output; void* first_decode; void* current_loc_valid; scalar_t__ discard_samples_deferred; scalar_t__ page_crc_tests; scalar_t__ previous_length; } ;
typedef TYPE_1__ stb_vorbis ;


 void* FALSE ;

void stb_vorbis_flush_pushdata(stb_vorbis *f)
{
   f->previous_length = 0;
   f->page_crc_tests = 0;
   f->discard_samples_deferred = 0;
   f->current_loc_valid = FALSE;
   f->first_decode = FALSE;
   f->samples_output = 0;
   f->channel_buffer_start = 0;
   f->channel_buffer_end = 0;
}
