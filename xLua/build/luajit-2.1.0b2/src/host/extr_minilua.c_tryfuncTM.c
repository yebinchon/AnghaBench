
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_9__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;
typedef scalar_t__ StkId ;


 int TM_CALL ;
 int incr_top (TYPE_1__*) ;
 int luaG_typeerror (TYPE_1__*,scalar_t__,char*) ;
 int * luaT_gettmbyobj (TYPE_1__*,scalar_t__,int ) ;
 scalar_t__ restorestack (TYPE_1__*,int ) ;
 int savestack (TYPE_1__*,scalar_t__) ;
 int setobj (TYPE_1__*,scalar_t__,scalar_t__) ;
 int ttisfunction (int const*) ;

__attribute__((used)) static StkId tryfuncTM(lua_State*L,StkId func){
const TValue*tm=luaT_gettmbyobj(L,func,TM_CALL);
StkId p;
ptrdiff_t funcr=savestack(L,func);
if(!ttisfunction(tm))
luaG_typeerror(L,func,"call");
for(p=L->top;p>func;p--)setobj(L,p,p-1);
incr_top(L);
func=restorestack(L,funcr);
setobj(L,func,tm);
return func;
}
