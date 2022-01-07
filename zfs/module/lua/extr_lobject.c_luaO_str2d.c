
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;


 int cast_uchar (char) ;
 scalar_t__ lisspace (int ) ;
 int lua_str2number (char const*,char**) ;
 int lua_strx2number (char const*,char**) ;
 scalar_t__ strpbrk (char const*,char*) ;

int luaO_str2d (const char *s, size_t len, lua_Number *result) {
  char *endptr;
  if (strpbrk(s, "nN"))
    return 0;
  else if (strpbrk(s, "xX"))
    *result = lua_strx2number(s, &endptr);
  else
    *result = lua_str2number(s, &endptr);
  if (endptr == s) return 0;
  while (lisspace(cast_uchar(*endptr))) endptr++;
  return (endptr == s + len);
}
