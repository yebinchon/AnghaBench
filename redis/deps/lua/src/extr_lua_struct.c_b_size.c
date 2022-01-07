
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Header ;


 int controloptions (int *,int,char const**,int *) ;
 int defaultoptions (int *) ;
 scalar_t__ gettoalign (size_t,int *,int,size_t) ;
 int isalnum (int) ;
 int luaL_argerror (int *,int,char*) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushinteger (int *,size_t) ;
 size_t optsize (int *,int,char const**) ;

__attribute__((used)) static int b_size (lua_State *L) {
  Header h;
  const char *fmt = luaL_checkstring(L, 1);
  size_t pos = 0;
  defaultoptions(&h);
  while (*fmt) {
    int opt = *fmt++;
    size_t size = optsize(L, opt, &fmt);
    pos += gettoalign(pos, &h, opt, size);
    if (opt == 's')
      luaL_argerror(L, 1, "option 's' has no fixed size");
    else if (opt == 'c' && size == 0)
      luaL_argerror(L, 1, "option 'c0' has no fixed size");
    if (!isalnum(opt))
      controloptions(L, opt, &fmt, &h);
    pos += size;
  }
  lua_pushinteger(L, pos);
  return 1;
}
