
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* state; scalar_t__* count; } ;
struct TYPE_4__ {TYPE_1__ cx; } ;


 TYPE_2__ g ;

__attribute__((used)) static void hash_init(void){

  g.cx.state[0] = 0x67452301;
  g.cx.state[1] = 0xEFCDAB89;
  g.cx.state[2] = 0x98BADCFE;
  g.cx.state[3] = 0x10325476;
  g.cx.state[4] = 0xC3D2E1F0;
  g.cx.count[0] = g.cx.count[1] = 0;
}
