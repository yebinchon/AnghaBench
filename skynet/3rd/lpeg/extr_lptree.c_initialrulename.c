
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int key; } ;
typedef int TTree ;


 int lua_pushvalue (int *,int) ;
 int lua_rawlen (int *,int) ;
 int lua_rawseti (int *,int,int) ;
 TYPE_1__* sib1 (int *) ;

__attribute__((used)) static void initialrulename (lua_State *L, TTree *grammar, int frule) {
  if (sib1(grammar)->key == 0) {
    int n = lua_rawlen(L, -1) + 1;
    lua_pushvalue(L, frule);
    lua_rawseti(L, -2, n);
    sib1(grammar)->key = n;
  }
}
