
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef char const* lua_Integer ;
typedef int luaL_Buffer ;


 int LUA_INTEGER_FRMLEN ;
 int LUA_NUMBER_FRMLEN ;
 char const L_ESC ;
 int MAX_FORMAT ;
 int MAX_ITEM ;
 int addlenmod (char*,int ) ;
 int addliteral (int *,int *,int) ;
 int l_sprintf (char*,int,char*,...) ;
 int luaL_addchar (int *,int ) ;
 int luaL_addsize (int *,int) ;
 int luaL_addvalue (int *) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_argerror (int *,int,char*) ;
 int luaL_buffinit (int *,int *) ;
 char* luaL_checkinteger (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 char const* luaL_checknumber (int *,int) ;
 int luaL_error (int *,char*,char const) ;
 char* luaL_prepbuffsize (int *,int) ;
 int luaL_pushresult (int *) ;
 char* luaL_tolstring (int *,int,size_t*) ;
 int lua_assert (int) ;
 int lua_gettop (int *) ;
 int lua_number2strx (int *,char*,int,char*,char const*) ;
 int lua_pop (int *,int) ;
 char* scanformat (int *,char const*,char*) ;
 int strchr (char*,char) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int str_format (lua_State *L) {
  int top = lua_gettop(L);
  int arg = 1;
  size_t sfl;
  const char *strfrmt = luaL_checklstring(L, arg, &sfl);
  const char *strfrmt_end = strfrmt+sfl;
  luaL_Buffer b;
  luaL_buffinit(L, &b);
  while (strfrmt < strfrmt_end) {
    if (*strfrmt != L_ESC)
      luaL_addchar(&b, *strfrmt++);
    else if (*++strfrmt == L_ESC)
      luaL_addchar(&b, *strfrmt++);
    else {
      char form[MAX_FORMAT];
      char *buff = luaL_prepbuffsize(&b, MAX_ITEM);
      int nb = 0;
      if (++arg > top)
        luaL_argerror(L, arg, "no value");
      strfrmt = scanformat(L, strfrmt, form);
      switch (*strfrmt++) {
        case 'c': {
          nb = l_sprintf(buff, MAX_ITEM, form, (int)luaL_checkinteger(L, arg));
          break;
        }
        case 'd': case 'i':
        case 'o': case 'u': case 'x': case 'X': {
          lua_Integer n = luaL_checkinteger(L, arg);
          addlenmod(form, LUA_INTEGER_FRMLEN);
          nb = l_sprintf(buff, MAX_ITEM, form, n);
          break;
        }
        case 'a': case 'A':
          addlenmod(form, LUA_NUMBER_FRMLEN);
          nb = lua_number2strx(L, buff, MAX_ITEM, form,
                                  luaL_checknumber(L, arg));
          break;
        case 'e': case 'E': case 'f':
        case 'g': case 'G': {
          addlenmod(form, LUA_NUMBER_FRMLEN);
          nb = l_sprintf(buff, MAX_ITEM, form, luaL_checknumber(L, arg));
          break;
        }
        case 'q': {
          addliteral(L, &b, arg);
          break;
        }
        case 's': {
          size_t l;
          const char *s = luaL_tolstring(L, arg, &l);
          if (form[2] == '\0')
            luaL_addvalue(&b);
          else {
            luaL_argcheck(L, l == strlen(s), arg, "string contains zeros");
            if (!strchr(form, '.') && l >= 100) {

              luaL_addvalue(&b);
            }
            else {
              nb = l_sprintf(buff, MAX_ITEM, form, s);
              lua_pop(L, 1);
            }
          }
          break;
        }
        default: {
          return luaL_error(L, "invalid option '%%%c' to 'format'",
                               *(strfrmt - 1));
        }
      }
      lua_assert(nb < MAX_ITEM);
      luaL_addsize(&b, nb);
    }
  }
  luaL_pushresult(&b);
  return 1;
}
