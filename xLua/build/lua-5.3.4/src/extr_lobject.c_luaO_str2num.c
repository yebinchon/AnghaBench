
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;
typedef int lua_Integer ;
typedef int TValue ;


 char* l_str2d (char const*,int *) ;
 char* l_str2int (char const*,int *) ;
 int setfltvalue (int *,int ) ;
 int setivalue (int *,int ) ;

size_t luaO_str2num (const char *s, TValue *o) {
  lua_Integer i; lua_Number n;
  const char *e;
  if ((e = l_str2int(s, &i)) != ((void*)0)) {
    setivalue(o, i);
  }
  else if ((e = l_str2d(s, &n)) != ((void*)0)) {
    setfltvalue(o, n);
  }
  else
    return 0;
  return (e - s) + 1;
}
