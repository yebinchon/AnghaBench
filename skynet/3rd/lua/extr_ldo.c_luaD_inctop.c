
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int top; } ;
typedef TYPE_1__ lua_State ;


 int luaD_checkstack (TYPE_1__*,int) ;

void luaD_inctop (lua_State *L) {
  luaD_checkstack(L, 1);
  L->top++;
}
