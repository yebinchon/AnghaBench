
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int Table ;
struct TYPE_13__ {int ** mt; } ;
struct TYPE_12__ {int * metatable; } ;
struct TYPE_11__ {int * metatable; } ;
typedef int TValue ;


 TYPE_8__* G (TYPE_1__*) ;
 int api_incr_top (TYPE_1__*) ;
 TYPE_6__* hvalue (int const*) ;
 int * index2adr (TYPE_1__*,int) ;
 int sethvalue (TYPE_1__*,int ,int *) ;
 size_t ttype (int const*) ;
 TYPE_2__* uvalue (int const*) ;

__attribute__((used)) static int lua_getmetatable(lua_State*L,int objindex){
const TValue*obj;
Table*mt=((void*)0);
int res;
obj=index2adr(L,objindex);
switch(ttype(obj)){
case 5:
mt=hvalue(obj)->metatable;
break;
case 7:
mt=uvalue(obj)->metatable;
break;
default:
mt=G(L)->mt[ttype(obj)];
break;
}
if(mt==((void*)0))
res=0;
else{
sethvalue(L,L->top,mt);
api_incr_top(L);
res=1;
}
return res;
}
