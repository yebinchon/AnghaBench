
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; int y; } ;


 TYPE_1__ g ;

unsigned int speedtest1_random(void){
  g.x = (g.x>>1) ^ ((1+~(g.x&1)) & 0xd0000001);
  g.y = g.y*1103515245 + 12345;
  return g.x ^ g.y;
}
