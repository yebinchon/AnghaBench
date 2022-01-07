
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct CallS {int func; int nresults; } ;
typedef int ptrdiff_t ;
struct TYPE_10__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int StkId ;


 int adjustresults (TYPE_1__*,int) ;
 int api_checknelems (TYPE_1__*,int) ;
 int api_checkvalidindex (TYPE_1__*,int) ;
 int checkresults (TYPE_1__*,int,int) ;
 int f_call ;
 int index2adr (TYPE_1__*,int) ;
 int luaD_pcall (TYPE_1__*,int ,struct CallS*,int ,int ) ;
 int savestack (TYPE_1__*,int) ;

__attribute__((used)) static int lua_pcall(lua_State*L,int nargs,int nresults,int errfunc){
struct CallS c;
int status;
ptrdiff_t func;
api_checknelems(L,nargs+1);
checkresults(L,nargs,nresults);
if(errfunc==0)
func=0;
else{
StkId o=index2adr(L,errfunc);
api_checkvalidindex(L,o);
func=savestack(L,o);
}
c.func=L->top-(nargs+1);
c.nresults=nresults;
status=luaD_pcall(L,f_call,&c,savestack(L,c.func),func);
adjustresults(L,nresults);
return status;
}
