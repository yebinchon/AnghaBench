
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int last_seg; int next_seg; int last_seg_which; int segment_count; int page_flag; int* segments; int bytes_in_seg; } ;
typedef TYPE_1__ vorb ;


 int PAGEFLAG_continued_packet ;
 int TRUE ;
 int VORBIS_continued_packet_flag_invalid ;
 int assert (int) ;
 int error (TYPE_1__*,int ) ;
 int start_page (TYPE_1__*) ;

__attribute__((used)) static int next_segment(vorb *f)
{
   int len;
   if (f->last_seg) return 0;
   if (f->next_seg == -1) {
      f->last_seg_which = f->segment_count-1;
      if (!start_page(f)) { f->last_seg = 1; return 0; }
      if (!(f->page_flag & PAGEFLAG_continued_packet)) return error(f, VORBIS_continued_packet_flag_invalid);
   }
   len = f->segments[f->next_seg++];
   if (len < 255) {
      f->last_seg = TRUE;
      f->last_seg_which = f->next_seg-1;
   }
   if (f->next_seg >= f->segment_count)
      f->next_seg = -1;
   assert(f->bytes_in_seg == 0);
   f->bytes_in_seg = len;
   return len;
}
