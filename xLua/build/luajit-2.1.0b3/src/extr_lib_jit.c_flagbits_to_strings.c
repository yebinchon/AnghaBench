
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int top; } ;
typedef TYPE_1__ lua_State ;


 int lj_str_new (TYPE_1__*,char const*,int ) ;
 int setstrV (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void flagbits_to_strings(lua_State *L, uint32_t flags, uint32_t base,
    const char *str)
{
  for (; *str; base <<= 1, str += 1+*str)
    if (flags & base)
      setstrV(L, L->top++, lj_str_new(L, str+1, *(uint8_t *)str));
}
