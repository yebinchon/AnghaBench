
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;


 int cast_num (double) ;
 int cast_uchar (char const) ;
 scalar_t__ lisxdigit (int ) ;
 double luaO_hexavalue (int ) ;

__attribute__((used)) static lua_Number readhexa (const char **s, lua_Number r, int *count) {
  for (; lisxdigit(cast_uchar(**s)); (*s)++) {
    r = (r * cast_num(16.0)) + cast_num(luaO_hexavalue(cast_uchar(**s)));
    (*count)++;
  }
  return r;
}
