
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int * f; } ;
typedef TYPE_1__ LStream ;


 int errno ;
 int * fopen (char const*,char const*) ;
 int luaL_error (int *,char*,char const*,int ) ;
 TYPE_1__* newfile (int *) ;
 int strerror (int ) ;

__attribute__((used)) static void opencheck (lua_State *L, const char *fname, const char *mode) {
  LStream *p = newfile(L);
  p->f = fopen(fname, mode);
  if (p->f == ((void*)0))
    luaL_error(L, "cannot open file '%s' (%s)", fname, strerror(errno));
}
