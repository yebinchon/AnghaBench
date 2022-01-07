
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int gkey (int *) ;
 int gval (int *) ;
 int lua_assert (int ) ;
 int setdeadvalue (int ) ;
 int ttisnil (int ) ;
 scalar_t__ valiswhite (int ) ;

__attribute__((used)) static void removeentry (Node *n) {
  lua_assert(ttisnil(gval(n)));
  if (valiswhite(gkey(n)))
    setdeadvalue(gkey(n));
}
