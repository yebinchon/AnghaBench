
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int lua_Number ;


 int api_incr_top (TYPE_1__*) ;
 int setnvalue (int ,int ) ;

__attribute__((used)) static void lua_pushnumber(lua_State*L,lua_Number n){
setnvalue(L->top,n);
api_incr_top(L);
}
