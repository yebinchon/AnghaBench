
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {char* p; char* pe; } ;
typedef TYPE_1__ LexState ;


 scalar_t__ LJ_UNLIKELY (int) ;
 int lua_assert (int) ;

__attribute__((used)) static uint32_t bcread_uleb128_33(LexState *ls)
{
  const uint8_t *p = (const uint8_t *)ls->p;
  uint32_t v = (*p++ >> 1);
  if (LJ_UNLIKELY(v >= 0x40)) {
    int sh = -1;
    v &= 0x3f;
    do {
     v |= ((*p & 0x7f) << (sh += 7));
   } while (*p++ >= 0x80);
  }
  ls->p = (char *)p;
  lua_assert(ls->p <= ls->pe);
  return v;
}
