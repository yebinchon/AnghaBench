
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int *** strcache; } ;
typedef int TString ;


 TYPE_1__* G (int *) ;
 int STRCACHE_M ;
 unsigned int STRCACHE_N ;
 int getstr (int *) ;
 int * luaS_newlstr (int *,char const*,int ) ;
 unsigned int point2uint (char const*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strlen (char const*) ;

TString *luaS_new (lua_State *L, const char *str) {
  unsigned int i = point2uint(str) % STRCACHE_N;
  int j;
  TString **p = G(L)->strcache[i];
  for (j = 0; j < STRCACHE_M; j++) {
    if (strcmp(str, getstr(p[j])) == 0)
      return p[j];
  }

  for (j = STRCACHE_M - 1; j > 0; j--)
    p[j] = p[j - 1];

  p[0] = luaS_newlstr(L, str, strlen(str));
  return p[0];
}
