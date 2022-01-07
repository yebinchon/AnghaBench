
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int next_seg; int first_decode; scalar_t__ previous_length; int first_audio_page_offset; } ;
typedef TYPE_1__ stb_vorbis ;


 scalar_t__ IS_PUSH_MODE (TYPE_1__*) ;
 int TRUE ;
 int VORBIS_invalid_api_mixing ;
 int error (TYPE_1__*,int ) ;
 int set_file_offset (TYPE_1__*,int ) ;
 int vorbis_pump_first_frame (TYPE_1__*) ;

int stb_vorbis_seek_start(stb_vorbis *f)
{
   if (IS_PUSH_MODE(f)) { return error(f, VORBIS_invalid_api_mixing); }
   set_file_offset(f, f->first_audio_page_offset);
   f->previous_length = 0;
   f->first_decode = TRUE;
   f->next_seg = -1;
   return vorbis_pump_first_frame(f);
}
