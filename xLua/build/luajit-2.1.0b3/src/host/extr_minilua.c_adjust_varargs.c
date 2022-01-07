
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef int Table ;
struct TYPE_8__ {int numparams; } ;
typedef scalar_t__ StkId ;
typedef TYPE_2__ Proto ;


 int sethvalue (TYPE_1__*,int ,int *) ;
 int setnilvalue (scalar_t__) ;
 int setobj (TYPE_1__*,int ,scalar_t__) ;

__attribute__((used)) static StkId adjust_varargs(lua_State*L,Proto*p,int actual){
int i;
int nfixargs=p->numparams;
Table*htab=((void*)0);
StkId base,fixed;
for(;actual<nfixargs;++actual)
setnilvalue(L->top++);
fixed=L->top-actual;
base=L->top;
for(i=0;i<nfixargs;i++){
setobj(L,L->top++,fixed+i);
setnilvalue(fixed+i);
}
if(htab){
sethvalue(L,L->top++,htab);
}
return base;
}
