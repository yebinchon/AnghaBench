
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int EXIT_SUCCESS ;
 scalar_t__ LUA_OK ;
 int doargs (int,char**) ;
 int fatal (char*) ;
 int * luaL_newstate () ;
 int lua_close (int *) ;
 scalar_t__ lua_pcall (int *,int,int ,int ) ;
 int lua_pushcfunction (int *,int *) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushlightuserdata (int *,char**) ;
 char* lua_tostring (int *,int) ;
 int pmain ;
 int usage (char*) ;

int main(int argc, char* argv[])
{
 lua_State* L;
 int i=doargs(argc,argv);
 argc-=i; argv+=i;
 if (argc<=0) usage("no input files given");
 L=luaL_newstate();
 if (L==((void*)0)) fatal("cannot create state: not enough memory");
 lua_pushcfunction(L,&pmain);
 lua_pushinteger(L,argc);
 lua_pushlightuserdata(L,argv);
 if (lua_pcall(L,2,0,0)!=LUA_OK) fatal(lua_tostring(L,-1));
 lua_close(L);
 return EXIT_SUCCESS;
}
