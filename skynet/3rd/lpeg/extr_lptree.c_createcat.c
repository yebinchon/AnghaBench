
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TTree ;


 int UCHAR_MAX ;
 int lua_setfield (int *,int,char const*) ;
 int * newcharset (int *) ;
 int setchar (int ,int) ;
 int treebuffer (int *) ;

__attribute__((used)) static void createcat (lua_State *L, const char *catname, int (catf) (int)) {
  TTree *t = newcharset(L);
  int i;
  for (i = 0; i <= UCHAR_MAX; i++)
    if (catf(i)) setchar(treebuffer(t), i);
  lua_setfield(L, -2, catname);
}
