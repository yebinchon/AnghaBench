
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {unsigned int last_decoded_sample; scalar_t__ page_start; scalar_t__ page_end; } ;
struct TYPE_8__ {unsigned int last_page; int segment_count; int* segments; int end_seg_with_known_loc; unsigned int known_loc_for_packet; scalar_t__ next_seg; TYPE_2__ p_first; scalar_t__ first_audio_page_offset; scalar_t__ first_decode; scalar_t__ page_flag; } ;
typedef TYPE_1__ vorb ;
typedef unsigned int uint32 ;
typedef TYPE_2__ ProbedPage ;


 int TRUE ;
 int VORBIS_invalid_stream_structure_version ;
 int VORBIS_unexpected_eof ;
 int error (TYPE_1__*,int ) ;
 unsigned int get32 (TYPE_1__*) ;
 scalar_t__ get8 (TYPE_1__*) ;
 int getn (TYPE_1__*,int*,int) ;

__attribute__((used)) static int start_page_no_capturepattern(vorb *f)
{
   uint32 loc0,loc1,n;

   if (0 != get8(f)) return error(f, VORBIS_invalid_stream_structure_version);

   f->page_flag = get8(f);

   loc0 = get32(f);
   loc1 = get32(f);


   get32(f);


   n = get32(f);
   f->last_page = n;

   get32(f);

   f->segment_count = get8(f);
   if (!getn(f, f->segments, f->segment_count))
      return error(f, VORBIS_unexpected_eof);

   f->end_seg_with_known_loc = -2;
   if (loc0 != ~0U || loc1 != ~0U) {
      int i;

      for (i=f->segment_count-1; i >= 0; --i)
         if (f->segments[i] < 255)
            break;

      if (i >= 0) {
         f->end_seg_with_known_loc = i;
         f->known_loc_for_packet = loc0;
      }
   }
   if (f->first_decode) {
      int i,len;
      ProbedPage p;
      len = 0;
      for (i=0; i < f->segment_count; ++i)
         len += f->segments[i];
      len += 27 + f->segment_count;
      p.page_start = f->first_audio_page_offset;
      p.page_end = p.page_start + len;
      p.last_decoded_sample = loc0;
      f->p_first = p;
   }
   f->next_seg = 0;
   return TRUE;
}
