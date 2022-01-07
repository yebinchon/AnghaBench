
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {double d; int u64; } ;
typedef TYPE_1__ U64double ;
struct TYPE_6__ {int* gen; int valid; } ;
typedef TYPE_2__ RandomState ;


 int lj_math_random_step (TYPE_2__*) ;

__attribute__((used)) static void random_init(RandomState *rs, double d)
{
  uint32_t r = 0x11090601;
  int i;
  for (i = 0; i < 4; i++) {
    U64double u;
    uint32_t m = 1u << (r&255);
    r >>= 8;
    u.d = d = d * 3.14159265358979323846 + 2.7182818284590452354;
    if (u.u64 < m) u.u64 += m;
    rs->gen[i] = u.u64;
  }
  rs->valid = 1;
  for (i = 0; i < 10; i++)
    lj_math_random_step(rs);
}
