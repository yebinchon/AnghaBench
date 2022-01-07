
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ baseCcalls; scalar_t__ nCcalls; TYPE_1__* ci; int top; int base; TYPE_1__* base_ci; scalar_t__ errfunc; int stack; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_12__ {TYPE_2__* mainthread; } ;
struct TYPE_10__ {int base; } ;


 TYPE_8__* G (TYPE_2__*) ;
 int callallgcTM ;
 int close_state (TYPE_2__*) ;
 int luaC_separateudata (TYPE_2__*,int) ;
 scalar_t__ luaD_rawrunprotected (TYPE_2__*,int ,int *) ;
 int luaF_close (TYPE_2__*,int ) ;

__attribute__((used)) static void lua_close(lua_State*L){
L=G(L)->mainthread;
luaF_close(L,L->stack);
luaC_separateudata(L,1);
L->errfunc=0;
do{
L->ci=L->base_ci;
L->base=L->top=L->ci->base;
L->nCcalls=L->baseCcalls=0;
}while(luaD_rawrunprotected(L,callallgcTM,((void*)0))!=0);
close_state(L);
}
