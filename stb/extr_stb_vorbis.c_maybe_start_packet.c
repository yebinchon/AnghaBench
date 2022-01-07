
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int next_seg; int page_flag; int last_seg; scalar_t__ bytes_in_seg; scalar_t__ eof; } ;
typedef TYPE_1__ vorb ;


 int FALSE ;
 int PAGEFLAG_continued_packet ;
 int VORBIS_continued_packet_flag_invalid ;
 int VORBIS_missing_capture_pattern ;
 int error (TYPE_1__*,int ) ;
 int get8 (TYPE_1__*) ;
 int start_packet (TYPE_1__*) ;
 int start_page_no_capturepattern (TYPE_1__*) ;

__attribute__((used)) static int maybe_start_packet(vorb *f)
{
   if (f->next_seg == -1) {
      int x = get8(f);
      if (f->eof) return FALSE;
      if (0x4f != x ) return error(f, VORBIS_missing_capture_pattern);
      if (0x67 != get8(f)) return error(f, VORBIS_missing_capture_pattern);
      if (0x67 != get8(f)) return error(f, VORBIS_missing_capture_pattern);
      if (0x53 != get8(f)) return error(f, VORBIS_missing_capture_pattern);
      if (!start_page_no_capturepattern(f)) return FALSE;
      if (f->page_flag & PAGEFLAG_continued_packet) {


         f->last_seg = FALSE;
         f->bytes_in_seg = 0;
         return error(f, VORBIS_continued_packet_flag_invalid);
      }
   }
   return start_packet(f);
}
