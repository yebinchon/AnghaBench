
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int top; } ;
typedef TYPE_1__ lua_State ;


 int luaS_newlstr (TYPE_1__*,char const*,size_t) ;
 int setsvalue2s (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void pushstr (lua_State *L, const char *str, size_t l) {
  setsvalue2s(L, L->top++, luaS_newlstr(L, str, l));
}
