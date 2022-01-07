
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint32_t ;
typedef int lua_State ;
struct TYPE_4__ {scalar_t__ reserved; } ;
typedef TYPE_1__ GCstr ;


 size_t TK_RESERVED ;
 int fixstring (TYPE_1__*) ;
 TYPE_1__* lj_str_newz (int *,int ) ;
 int * tokennames ;

void lj_lex_init(lua_State *L)
{
  uint32_t i;
  for (i = 0; i < TK_RESERVED; i++) {
    GCstr *s = lj_str_newz(L, tokennames[i]);
    fixstring(s);
    s->reserved = (uint8_t)(i+1);
  }
}
