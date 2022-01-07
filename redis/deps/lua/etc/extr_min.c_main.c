
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int fprintf (int ,char*,char*) ;
 scalar_t__ luaL_dofile (int *,int *) ;
 int lua_close (int *) ;
 int * lua_open () ;
 int lua_register (int *,char*,int ) ;
 char* lua_tostring (int *,int) ;
 int print ;
 int stderr ;

int main(void)
{
 lua_State *L=lua_open();
 lua_register(L,"print",print);
 if (luaL_dofile(L,((void*)0))!=0) fprintf(stderr,"%s\n",lua_tostring(L,-1));
 lua_close(L);
 return 0;
}
