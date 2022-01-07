
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int top; } ;
typedef TYPE_1__ lua_State ;


 int api_incr_top (TYPE_1__*) ;
 int setnilvalue (int ) ;

__attribute__((used)) static void lua_pushnil(lua_State*L){
setnilvalue(L->top);
api_incr_top(L);
}
