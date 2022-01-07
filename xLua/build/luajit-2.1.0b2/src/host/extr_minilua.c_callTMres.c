
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_8__ {int const* top; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;
typedef int const* StkId ;


 int luaD_call (TYPE_1__*,int const*,int) ;
 int luaD_checkstack (TYPE_1__*,int) ;
 int const* restorestack (TYPE_1__*,int ) ;
 int savestack (TYPE_1__*,int const*) ;
 int setobj (TYPE_1__*,int const*,int const*) ;

__attribute__((used)) static void callTMres(lua_State*L,StkId res,const TValue*f,
const TValue*p1,const TValue*p2){
ptrdiff_t result=savestack(L,res);
setobj(L,L->top,f);
setobj(L,L->top+1,p1);
setobj(L,L->top+2,p2);
luaD_checkstack(L,3);
L->top+=3;
luaD_call(L,L->top-3,1);
res=restorestack(L,result);
L->top--;
setobj(L,res,L->top);
}
