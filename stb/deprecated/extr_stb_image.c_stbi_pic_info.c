
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int stbi ;
struct TYPE_2__ {int size; int channel; void* type; } ;
typedef TYPE_1__ pic_packet_t ;
typedef int packets ;


 scalar_t__ at_eof (int *) ;
 int get16 (int *) ;
 int get8 (int *) ;
 void* get8u (int *) ;
 int skip (int *,int) ;
 int stbi_rewind (int *) ;

__attribute__((used)) static int stbi_pic_info(stbi *s, int *x, int *y, int *comp)
{
   int act_comp=0,num_packets=0,chained;
   pic_packet_t packets[10];

   skip(s, 92);

   *x = get16(s);
   *y = get16(s);
   if (at_eof(s)) return 0;
   if ( (*x) != 0 && (1 << 28) / (*x) < (*y)) {
       stbi_rewind( s );
       return 0;
   }

   skip(s, 8);

   do {
      pic_packet_t *packet;

      if (num_packets==sizeof(packets)/sizeof(packets[0]))
         return 0;

      packet = &packets[num_packets++];
      chained = get8(s);
      packet->size = get8u(s);
      packet->type = get8u(s);
      packet->channel = get8u(s);
      act_comp |= packet->channel;

      if (at_eof(s)) {
          stbi_rewind( s );
          return 0;
      }
      if (packet->size != 8) {
          stbi_rewind( s );
          return 0;
      }
   } while (chained);

   *comp = (act_comp & 0x10 ? 4 : 3);

   return 1;
}
