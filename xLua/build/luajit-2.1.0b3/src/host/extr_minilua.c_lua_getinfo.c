
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ top; TYPE_3__* base_ci; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_14__ {scalar_t__ i_ci; } ;
typedef TYPE_2__ lua_Debug ;
struct TYPE_15__ {scalar_t__ func; } ;
typedef scalar_t__ StkId ;
typedef int Closure ;
typedef TYPE_3__ CallInfo ;


 int auxgetinfo (TYPE_1__*,char const*,TYPE_2__*,int *,TYPE_3__*) ;
 int * clvalue (scalar_t__) ;
 int collectvalidlines (TYPE_1__*,int *) ;
 int incr_top (TYPE_1__*) ;
 int luai_apicheck (TYPE_1__*,int ) ;
 int setclvalue (TYPE_1__*,scalar_t__,int *) ;
 int setnilvalue (scalar_t__) ;
 scalar_t__ strchr (char const*,char) ;
 int ttisfunction (scalar_t__) ;

__attribute__((used)) static int lua_getinfo(lua_State*L,const char*what,lua_Debug*ar){
int status;
Closure*f=((void*)0);
CallInfo*ci=((void*)0);
if(*what=='>'){
StkId func=L->top-1;
luai_apicheck(L,ttisfunction(func));
what++;
f=clvalue(func);
L->top--;
}
else if(ar->i_ci!=0){
ci=L->base_ci+ar->i_ci;
f=clvalue(ci->func);
}
status=auxgetinfo(L,what,ar,f,ci);
if(strchr(what,'f')){
if(f==((void*)0))setnilvalue(L->top);
else setclvalue(L,L->top,f);
incr_top(L);
}
if(strchr(what,'L'))
collectvalidlines(L,f);
return status;
}
