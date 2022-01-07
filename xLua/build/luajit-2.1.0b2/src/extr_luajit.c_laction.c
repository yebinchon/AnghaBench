
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LUA_MASKCALL ;
 int LUA_MASKCOUNT ;
 int LUA_MASKRET ;
 int SIG_DFL ;
 int globalL ;
 int lstop ;
 int lua_sethook (int ,int ,int,int) ;
 int signal (int,int ) ;

__attribute__((used)) static void laction(int i)
{
  signal(i, SIG_DFL);

  lua_sethook(globalL, lstop, LUA_MASKCALL | LUA_MASKRET | LUA_MASKCOUNT, 1);
}
