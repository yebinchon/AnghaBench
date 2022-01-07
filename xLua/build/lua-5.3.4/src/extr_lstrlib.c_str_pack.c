
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_Unsigned ;
typedef int lua_State ;
typedef scalar_t__ lua_Number ;
typedef int lua_Integer ;
typedef int luaL_Buffer ;
struct TYPE_6__ {float f; double d; int buff; scalar_t__ n; } ;
struct TYPE_5__ {int islittle; } ;
typedef int KOption ;
typedef TYPE_1__ Header ;
typedef TYPE_2__ Ftypes ;
 char LUAL_PACKPADBYTE ;
 int NB ;
 int SZINT ;
 int copywithendian (char*,int ,int,int ) ;
 int getdetails (TYPE_1__*,size_t,char const**,int*,int*) ;
 int initheader (int *,TYPE_1__*) ;
 int luaL_addchar (int *,char) ;
 int luaL_addlstring (int *,char const*,size_t) ;
 int luaL_addsize (int *,int) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_checkinteger (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ luaL_checknumber (int *,int) ;
 char* luaL_checkstring (int *,int) ;
 char* luaL_prepbuffsize (int *,int) ;
 int luaL_pushresult (int *) ;
 int lua_pushnil (int *) ;
 int packint (int *,int,int ,int,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int str_pack (lua_State *L) {
  luaL_Buffer b;
  Header h;
  const char *fmt = luaL_checkstring(L, 1);
  int arg = 1;
  size_t totalsize = 0;
  initheader(L, &h);
  lua_pushnil(L);
  luaL_buffinit(L, &b);
  while (*fmt != '\0') {
    int size, ntoalign;
    KOption opt = getdetails(&h, totalsize, &fmt, &size, &ntoalign);
    totalsize += ntoalign + size;
    while (ntoalign-- > 0)
     luaL_addchar(&b, LUAL_PACKPADBYTE);
    arg++;
    switch (opt) {
      case 134: {
        lua_Integer n = luaL_checkinteger(L, arg);
        if (size < SZINT) {
          lua_Integer lim = (lua_Integer)1 << ((size * NB) - 1);
          luaL_argcheck(L, -lim <= n && n < lim, arg, "integer overflow");
        }
        packint(&b, (lua_Unsigned)n, h.islittle, size, (n < 0));
        break;
      }
      case 129: {
        lua_Integer n = luaL_checkinteger(L, arg);
        if (size < SZINT)
          luaL_argcheck(L, (lua_Unsigned)n < ((lua_Unsigned)1 << (size * NB)),
                           arg, "unsigned overflow");
        packint(&b, (lua_Unsigned)n, h.islittle, size, 0);
        break;
      }
      case 135: {
        volatile Ftypes u;
        char *buff = luaL_prepbuffsize(&b, size);
        lua_Number n = luaL_checknumber(L, arg);
        if (size == sizeof(u.f)) u.f = (float)n;
        else if (size == sizeof(u.d)) u.d = (double)n;
        else u.n = n;

        copywithendian(buff, u.buff, size, h.islittle);
        luaL_addsize(&b, size);
        break;
      }
      case 136: {
        size_t len;
        const char *s = luaL_checklstring(L, arg, &len);
        luaL_argcheck(L, len <= (size_t)size, arg,
                         "string longer than given size");
        luaL_addlstring(&b, s, len);
        while (len++ < (size_t)size)
          luaL_addchar(&b, LUAL_PACKPADBYTE);
        break;
      }
      case 130: {
        size_t len;
        const char *s = luaL_checklstring(L, arg, &len);
        luaL_argcheck(L, size >= (int)sizeof(size_t) ||
                         len < ((size_t)1 << (size * NB)),
                         arg, "string length does not fit in given size");
        packint(&b, (lua_Unsigned)len, h.islittle, size, 0);
        luaL_addlstring(&b, s, len);
        totalsize += len;
        break;
      }
      case 128: {
        size_t len;
        const char *s = luaL_checklstring(L, arg, &len);
        luaL_argcheck(L, strlen(s) == len, arg, "string contains zeros");
        luaL_addlstring(&b, s, len);
        luaL_addchar(&b, '\0');
        totalsize += len + 1;
        break;
      }
      case 131: luaL_addchar(&b, LUAL_PACKPADBYTE);
      case 132: case 133:
        arg--;
        break;
    }
  }
  luaL_pushresult(&b);
  return 1;
}
