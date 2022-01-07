
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;
typedef int KOption ;
typedef int Header ;




 int MAXSIZE ;
 int getdetails (int *,size_t,char const**,int*,int*) ;
 int initheader (int *,int *) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_argerror (int *,int,char*) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int str_packsize (lua_State *L) {
  Header h;
  const char *fmt = luaL_checkstring(L, 1);
  size_t totalsize = 0;
  initheader(L, &h);
  while (*fmt != '\0') {
    int size, ntoalign;
    KOption opt = getdetails(&h, totalsize, &fmt, &size, &ntoalign);
    size += ntoalign;
    luaL_argcheck(L, totalsize <= MAXSIZE - size, 1,
                     "format result too large");
    totalsize += size;
    switch (opt) {
      case 129:
      case 128:
        luaL_argerror(L, 1, "variable-length format");

      default: break;
    }
  }
  lua_pushinteger(L, (lua_Integer)totalsize);
  return 1;
}
