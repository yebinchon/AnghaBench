
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int next_seg; int* stream; int segment_count; int* segments; int* stream_end; scalar_t__ previous_length; } ;
typedef TYPE_1__ stb_vorbis ;


 int FALSE ;
 int PAGEFLAG_continued_packet ;
 int TRUE ;
 int VORBIS_invalid_stream ;
 int VORBIS_need_more_data ;
 int error (TYPE_1__*,int ) ;
 scalar_t__ memcmp (int*,int ,int) ;
 int ogg_page_header ;

__attribute__((used)) static int is_whole_packet_present(stb_vorbis *f, int end_page)
{
   int s = f->next_seg, first = TRUE;
   uint8 *p = f->stream;

   if (s != -1) {
      for (; s < f->segment_count; ++s) {
         p += f->segments[s];
         if (f->segments[s] < 255)
            break;
      }

      if (end_page)
         if (s < f->segment_count-1) return error(f, VORBIS_invalid_stream);
      if (s == f->segment_count)
         s = -1;
      if (p > f->stream_end) return error(f, VORBIS_need_more_data);
      first = FALSE;
   }
   for (; s == -1;) {
      uint8 *q;
      int n;


      if (p + 26 >= f->stream_end) return error(f, VORBIS_need_more_data);

      if (memcmp(p, ogg_page_header, 4)) return error(f, VORBIS_invalid_stream);
      if (p[4] != 0) return error(f, VORBIS_invalid_stream);
      if (first) {
         if (f->previous_length)
            if ((p[5] & PAGEFLAG_continued_packet)) return error(f, VORBIS_invalid_stream);


      } else {
         if (!(p[5] & PAGEFLAG_continued_packet)) return error(f, VORBIS_invalid_stream);
      }
      n = p[26];
      q = p+27;
      p = q + n;

      if (p > f->stream_end) return error(f, VORBIS_need_more_data);
      for (s=0; s < n; ++s) {
         p += q[s];
         if (q[s] < 255)
            break;
      }
      if (end_page)
         if (s < n-1) return error(f, VORBIS_invalid_stream);
      if (s == n)
         s = -1;
      if (p > f->stream_end) return error(f, VORBIS_need_more_data);
      first = FALSE;
   }
   return TRUE;
}
