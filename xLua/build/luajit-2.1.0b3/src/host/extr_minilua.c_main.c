
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int bitlib ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ luaL_loadfile (int *,char*) ;
 int * luaL_newstate () ;
 int luaL_openlibs (int *) ;
 int luaL_register (int *,char*,int ) ;
 int lua_close (int *) ;
 int lua_createtable (int *,int ,int) ;
 scalar_t__ lua_pcall (int *,int,int ,int ) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawseti (int *,int,int ) ;
 int lua_setglobal (int *,char*) ;
 char* lua_tostring (int *,int) ;
 int stderr ;

int main(int argc,char**argv){
lua_State*L=luaL_newstate();
int i;
luaL_openlibs(L);
luaL_register(L,"bit",bitlib);
if(argc<2)return sizeof(void*);
lua_createtable(L,0,1);
lua_pushstring(L,argv[1]);
lua_rawseti(L,-2,0);
lua_setglobal(L,"arg");
if(luaL_loadfile(L,argv[1]))
goto err;
for(i=2;i<argc;i++)
lua_pushstring(L,argv[i]);
if(lua_pcall(L,argc-2,0,0)){
err:
fprintf(stderr,"Error: %s\n",lua_tostring(L,-1));
return 1;
}
lua_close(L);
return 0;
}
