
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int top; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_11__ {int env; } ;
struct TYPE_14__ {TYPE_1__ c; } ;
struct TYPE_13__ {int env; } ;
typedef int StkId ;


 int api_checkvalidindex (TYPE_2__*,int ) ;
 int api_incr_top (TYPE_2__*) ;
 TYPE_8__* clvalue (int ) ;
 int gt (int ) ;
 int index2adr (TYPE_2__*,int) ;
 int sethvalue (TYPE_2__*,int ,int ) ;
 int setnilvalue (int ) ;
 int setobj (TYPE_2__*,int ,int ) ;
 int thvalue (int ) ;
 int ttype (int ) ;
 TYPE_3__* uvalue (int ) ;

__attribute__((used)) static void lua_getfenv(lua_State*L,int idx){
StkId o;
o=index2adr(L,idx);
api_checkvalidindex(L,o);
switch(ttype(o)){
case 6:
sethvalue(L,L->top,clvalue(o)->c.env);
break;
case 7:
sethvalue(L,L->top,uvalue(o)->env);
break;
case 8:
setobj(L,L->top,gt(thvalue(o)));
break;
default:
setnilvalue(L->top);
break;
}
api_incr_top(L);
}
