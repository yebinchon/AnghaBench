
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int extraline; int * f; } ;
typedef TYPE_1__ LoadF ;


 int EOF ;
 int errfile (int *,char*,int) ;
 int fclose (int *) ;
 int ferror (int *) ;
 int * fopen (char const*,char*) ;
 int * freopen (char const*,char*,int *) ;
 int getF ;
 int getc (int *) ;
 int lua_gettop (int *) ;
 int lua_load (int *,int ,TYPE_1__*,int ) ;
 int lua_pushfstring (int *,char*,char const*) ;
 int lua_pushliteral (int *,char*) ;
 int lua_remove (int *,int) ;
 int lua_settop (int *,int) ;
 int lua_tostring (int *,int) ;
 int * stdin ;
 int ungetc (int,int *) ;

__attribute__((used)) static int luaL_loadfile(lua_State*L,const char*filename){
LoadF lf;
int status,readstatus;
int c;
int fnameindex=lua_gettop(L)+1;
lf.extraline=0;
if(filename==((void*)0)){
lua_pushliteral(L,"=stdin");
lf.f=stdin;
}
else{
lua_pushfstring(L,"@%s",filename);
lf.f=fopen(filename,"r");
if(lf.f==((void*)0))return errfile(L,"open",fnameindex);
}
c=getc(lf.f);
if(c=='#'){
lf.extraline=1;
while((c=getc(lf.f))!=EOF&&c!='\n');
if(c=='\n')c=getc(lf.f);
}
if(c=="\033Lua"[0]&&filename){
lf.f=freopen(filename,"rb",lf.f);
if(lf.f==((void*)0))return errfile(L,"reopen",fnameindex);
while((c=getc(lf.f))!=EOF&&c!="\033Lua"[0]);
lf.extraline=0;
}
ungetc(c,lf.f);
status=lua_load(L,getF,&lf,lua_tostring(L,-1));
readstatus=ferror(lf.f);
if(filename)fclose(lf.f);
if(readstatus){
lua_settop(L,fnameindex);
return errfile(L,"read",fnameindex);
}
lua_remove(L,fnameindex);
return status;
}
