
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int EOF ;
 int getc (int *) ;
 int lua_pushlstring (int *,int *,int ) ;
 int ungetc (int,int *) ;

__attribute__((used)) static int test_eof (lua_State *L, FILE *f) {
  int c = getc(f);
  ungetc(c, f);
  lua_pushlstring(L, ((void*)0), 0);
  return (c != EOF);
}
