
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int searchers ;
typedef int lua_State ;
typedef int * lua_CFunction ;


 int lua_createtable (int *,int,int ) ;
 int lua_pushcclosure (int *,int * const,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawseti (int *,int,int) ;
 int lua_setfield (int *,int,char*) ;





__attribute__((used)) static void createsearcherstable (lua_State *L) {
  static const lua_CFunction searchers[] =
    {128, 129, 131, 130, ((void*)0)};
  int i;

  lua_createtable(L, sizeof(searchers)/sizeof(searchers[0]) - 1, 0);

  for (i=0; searchers[i] != ((void*)0); i++) {
    lua_pushvalue(L, -2);
    lua_pushcclosure(L, searchers[i], 1);
    lua_rawseti(L, -2, i+1);
  }




  lua_setfield(L, -2, "searchers");
}
