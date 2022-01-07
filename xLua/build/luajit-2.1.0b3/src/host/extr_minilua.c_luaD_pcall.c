
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef void* ptrdiff_t ;
struct TYPE_12__ {unsigned short nCcalls; void* errfunc; int allowhook; TYPE_3__* ci; int savedpc; int base; } ;
typedef TYPE_1__ lua_State ;
typedef int lu_byte ;
struct TYPE_13__ {int savedpc; int base; } ;
typedef int StkId ;
typedef int Pfunc ;


 int luaD_rawrunprotected (TYPE_1__*,int ,void*) ;
 int luaD_seterrorobj (TYPE_1__*,int,int ) ;
 int luaF_close (TYPE_1__*,int ) ;
 int restore_stack_limit (TYPE_1__*) ;
 TYPE_3__* restoreci (TYPE_1__*,void*) ;
 int restorestack (TYPE_1__*,void*) ;
 void* saveci (TYPE_1__*,TYPE_3__*) ;

__attribute__((used)) static int luaD_pcall(lua_State*L,Pfunc func,void*u,
ptrdiff_t old_top,ptrdiff_t ef){
int status;
unsigned short oldnCcalls=L->nCcalls;
ptrdiff_t old_ci=saveci(L,L->ci);
lu_byte old_allowhooks=L->allowhook;
ptrdiff_t old_errfunc=L->errfunc;
L->errfunc=ef;
status=luaD_rawrunprotected(L,func,u);
if(status!=0){
StkId oldtop=restorestack(L,old_top);
luaF_close(L,oldtop);
luaD_seterrorobj(L,status,oldtop);
L->nCcalls=oldnCcalls;
L->ci=restoreci(L,old_ci);
L->base=L->ci->base;
L->savedpc=L->ci->savedpc;
L->allowhook=old_allowhooks;
restore_stack_limit(L);
}
L->errfunc=old_errfunc;
return status;
}
