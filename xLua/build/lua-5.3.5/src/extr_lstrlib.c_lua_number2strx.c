
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;


 size_t SIZELENMOD ;
 int luaL_error (int *,char*) ;
 int num2straux (char*,int,int ) ;
 char toupper (int ) ;
 int uchar (char) ;

__attribute__((used)) static int lua_number2strx (lua_State *L, char *buff, int sz,
                            const char *fmt, lua_Number x) {
  int n = num2straux(buff, sz, x);
  if (fmt[SIZELENMOD] == 'A') {
    int i;
    for (i = 0; i < n; i++)
      buff[i] = toupper(uchar(buff[i]));
  }
  else if (fmt[SIZELENMOD] != 'a')
    return luaL_error(L, "modifiers for format '%%a'/'%%A' not implemented");
  return n;
}
