
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lvl; int L; } ;
typedef TYPE_1__ luaL_Buffer ;


 int emptybuffer (TYPE_1__*) ;
 int lua_concat (int ,int) ;

__attribute__((used)) static void luaL_pushresult(luaL_Buffer*B){
emptybuffer(B);
lua_concat(B->L,B->lvl);
B->lvl=1;
}
