
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef scalar_t__ StkId ;


 int adjustresults (TYPE_1__*,int) ;
 int api_checknelems (TYPE_1__*,int) ;
 int checkresults (TYPE_1__*,int,int) ;
 int luaD_call (TYPE_1__*,scalar_t__,int) ;

__attribute__((used)) static void lua_call(lua_State*L,int nargs,int nresults){
StkId func;
api_checknelems(L,nargs+1);
checkresults(L,nargs,nresults);
func=L->top-(nargs+1);
luaD_call(L,func,nresults);
adjustresults(L,nresults);
}
