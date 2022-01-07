
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef scalar_t__ StkId ;


 int api_checkvalidindex (TYPE_1__*,scalar_t__) ;
 scalar_t__ index2adr (TYPE_1__*,int) ;
 int setobj (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void lua_insert(lua_State*L,int idx){
StkId p;
StkId q;
p=index2adr(L,idx);
api_checkvalidindex(L,p);
for(q=L->top;q>p;q--)setobj(L,q,q-1);
setobj(L,p,L->top);
}
