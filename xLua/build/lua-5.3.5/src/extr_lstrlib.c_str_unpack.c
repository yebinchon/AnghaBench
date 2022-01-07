
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
typedef int lua_Number ;
typedef size_t lua_Integer ;
struct TYPE_6__ {int n; int d; int f; int buff; } ;
struct TYPE_5__ {int islittle; } ;
typedef int KOption ;
typedef TYPE_1__ Header ;
typedef TYPE_2__ Ftypes ;
 int copywithendian (int ,char const*,int,int ) ;
 int getdetails (TYPE_1__*,size_t,char const**,int*,int*) ;
 int initheader (int *,TYPE_1__*) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_argerror (int *,int,char*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_checkstack (int *,int,char*) ;
 char* luaL_checkstring (int *,int) ;
 int luaL_optinteger (int *,int,int) ;
 int lua_pushinteger (int *,size_t) ;
 int lua_pushlstring (int *,char const*,size_t) ;
 int lua_pushnumber (int *,int ) ;
 scalar_t__ posrelat (int ,size_t) ;
 scalar_t__ strlen (char const*) ;
 size_t unpackint (int *,char const*,int ,int,int) ;

__attribute__((used)) static int str_unpack (lua_State *L) {
  Header h;
  const char *fmt = luaL_checkstring(L, 1);
  size_t ld;
  const char *data = luaL_checklstring(L, 2, &ld);
  size_t pos = (size_t)posrelat(luaL_optinteger(L, 3, 1), ld) - 1;
  int n = 0;
  luaL_argcheck(L, pos <= ld, 3, "initial position out of string");
  initheader(L, &h);
  while (*fmt != '\0') {
    int size, ntoalign;
    KOption opt = getdetails(&h, pos, &fmt, &size, &ntoalign);
    if ((size_t)ntoalign + size > ~pos || pos + ntoalign + size > ld)
      luaL_argerror(L, 2, "data string too short");
    pos += ntoalign;

    luaL_checkstack(L, 2, "too many results");
    n++;
    switch (opt) {
      case 134:
      case 129: {
        lua_Integer res = unpackint(L, data + pos, h.islittle, size,
                                       (opt == 134));
        lua_pushinteger(L, res);
        break;
      }
      case 135: {
        volatile Ftypes u;
        lua_Number num;
        copywithendian(u.buff, data + pos, size, h.islittle);
        if (size == sizeof(u.f)) num = (lua_Number)u.f;
        else if (size == sizeof(u.d)) num = (lua_Number)u.d;
        else num = u.n;
        lua_pushnumber(L, num);
        break;
      }
      case 136: {
        lua_pushlstring(L, data + pos, size);
        break;
      }
      case 130: {
        size_t len = (size_t)unpackint(L, data + pos, h.islittle, size, 0);
        luaL_argcheck(L, pos + len + size <= ld, 2, "data string too short");
        lua_pushlstring(L, data + pos + size, len);
        pos += len;
        break;
      }
      case 128: {
        size_t len = (int)strlen(data + pos);
        lua_pushlstring(L, data + pos, len);
        pos += len + 1;
        break;
      }
      case 132: case 131: case 133:
        n--;
        break;
    }
    pos += size;
  }
  lua_pushinteger(L, pos + 1);
  return n + 1;
}
