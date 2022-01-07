
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int top; } ;
typedef TYPE_1__ lua_State ;


 int api_incr_top (TYPE_1__*) ;
 int setbvalue (int ,int) ;

__attribute__((used)) static void lua_pushboolean(lua_State*L,int b){
setbvalue(L->top,(b!=0));
api_incr_top(L);
}
