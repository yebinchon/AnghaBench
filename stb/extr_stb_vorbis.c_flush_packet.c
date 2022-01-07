
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vorb ;


 scalar_t__ EOP ;
 scalar_t__ get8_packet_raw (int *) ;

__attribute__((used)) static void flush_packet(vorb *f)
{
   while (get8_packet_raw(f) != EOP);
}
