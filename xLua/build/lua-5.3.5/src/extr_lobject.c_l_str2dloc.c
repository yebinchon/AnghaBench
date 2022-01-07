
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;


 int cast_uchar (char) ;
 scalar_t__ lisspace (int ) ;
 int lua_str2number (char const*,char**) ;
 int lua_strx2number (char const*,char**) ;

__attribute__((used)) static const char *l_str2dloc (const char *s, lua_Number *result, int mode) {
  char *endptr;
  *result = (mode == 'x') ? lua_strx2number(s, &endptr)
                          : lua_str2number(s, &endptr);
  if (endptr == s) return ((void*)0);
  while (lisspace(cast_uchar(*endptr))) endptr++;
  return (*endptr == '\0') ? endptr : ((void*)0);
}
