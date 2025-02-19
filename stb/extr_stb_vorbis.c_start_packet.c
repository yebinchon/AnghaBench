
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int next_seg; int page_flag; int last_seg; scalar_t__ bytes_in_seg; scalar_t__ packet_bytes; scalar_t__ valid_bits; } ;
typedef TYPE_1__ vorb ;


 int FALSE ;
 int PAGEFLAG_continued_packet ;
 int TRUE ;
 int VORBIS_continued_packet_flag_invalid ;
 int error (TYPE_1__*,int ) ;
 int start_page (TYPE_1__*) ;

__attribute__((used)) static int start_packet(vorb *f)
{
   while (f->next_seg == -1) {
      if (!start_page(f)) return FALSE;
      if (f->page_flag & PAGEFLAG_continued_packet)
         return error(f, VORBIS_continued_packet_flag_invalid);
   }
   f->last_seg = FALSE;
   f->valid_bits = 0;
   f->packet_bytes = 0;
   f->bytes_in_seg = 0;

   return TRUE;
}
