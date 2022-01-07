
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int LUA_TDEADKEY ;
 int gkey (int *) ;
 int gval (int *) ;
 scalar_t__ iscollectable (int ) ;
 int lua_assert (int ) ;
 int setttype (int ,int ) ;
 int ttisnil (int ) ;

__attribute__((used)) static void removeentry (Node *n) {
  lua_assert(ttisnil(gval(n)));
  if (iscollectable(gkey(n)))
    setttype(gkey(n), LUA_TDEADKEY);
}
