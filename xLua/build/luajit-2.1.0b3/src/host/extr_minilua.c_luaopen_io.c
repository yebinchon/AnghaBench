
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int createmeta (int *) ;
 int createstdfile (int *,int ,int,char*) ;
 int io_fclose ;
 int io_noclose ;
 int io_pclose ;
 int iolib ;
 int luaL_register (int *,char*,int ) ;
 int lua_getfield (int *,int,char*) ;
 int lua_pop (int *,int) ;
 int lua_replace (int *,int) ;
 int lua_setfenv (int *,int) ;
 int newfenv (int *,int ) ;
 int stderr ;
 int stdin ;
 int stdout ;

__attribute__((used)) static int luaopen_io(lua_State*L){
createmeta(L);
newfenv(L,io_fclose);
lua_replace(L,(-10001));
luaL_register(L,"io",iolib);
newfenv(L,io_noclose);
createstdfile(L,stdin,1,"stdin");
createstdfile(L,stdout,2,"stdout");
createstdfile(L,stderr,0,"stderr");
lua_pop(L,1);
lua_getfield(L,-1,"popen");
newfenv(L,io_pclose);
lua_setfenv(L,-2);
lua_pop(L,1);
return 1;
}
