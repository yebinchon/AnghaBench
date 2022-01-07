
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Unsigned ;
typedef int lua_Integer ;


 int MAXBY10 ;
 int MAXLASTD ;
 int cast_uchar (char const) ;
 int isneg (char const**) ;
 int l_castU2S (unsigned int) ;
 scalar_t__ lisdigit (int ) ;
 scalar_t__ lisspace (int ) ;
 scalar_t__ lisxdigit (int ) ;
 int luaO_hexavalue (char const) ;

__attribute__((used)) static const char *l_str2int (const char *s, lua_Integer *result) {
  lua_Unsigned a = 0;
  int empty = 1;
  int neg;
  while (lisspace(cast_uchar(*s))) s++;
  neg = isneg(&s);
  if (s[0] == '0' &&
      (s[1] == 'x' || s[1] == 'X')) {
    s += 2;
    for (; lisxdigit(cast_uchar(*s)); s++) {
      a = a * 16 + luaO_hexavalue(*s);
      empty = 0;
    }
  }
  else {
    for (; lisdigit(cast_uchar(*s)); s++) {
      int d = *s - '0';
      if (a >= MAXBY10 && (a > MAXBY10 || d > MAXLASTD + neg))
        return ((void*)0);
      a = a * 10 + d;
      empty = 0;
    }
  }
  while (lisspace(cast_uchar(*s))) s++;
  if (empty || *s != '\0') return ((void*)0);
  else {
    *result = l_castU2S((neg) ? 0u - a : a);
    return s;
  }
}
