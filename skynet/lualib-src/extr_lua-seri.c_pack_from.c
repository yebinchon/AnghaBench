
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_block {int dummy; } ;
typedef int lua_State ;


 int lua_gettop (int *) ;
 int pack_one (int *,struct write_block*,int,int ) ;

__attribute__((used)) static void
pack_from(lua_State *L, struct write_block *b, int from) {
 int n = lua_gettop(L) - from;
 int i;
 for (i=1;i<=n;i++) {
  pack_one(L, b , from + i, 0);
 }
}
