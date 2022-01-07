
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ bytes_in_seg; int packet_bytes; scalar_t__ last_seg; } ;
typedef TYPE_1__ vorb ;


 int EOP ;
 int assert (int) ;
 int get8 (TYPE_1__*) ;
 int next_segment (TYPE_1__*) ;

__attribute__((used)) static int get8_packet_raw(vorb *f)
{
   if (!f->bytes_in_seg) {
      if (f->last_seg) return EOP;
      else if (!next_segment(f)) return EOP;
   }
   assert(f->bytes_in_seg > 0);
   --f->bytes_in_seg;
   ++f->packet_bytes;
   return get8(f);
}
