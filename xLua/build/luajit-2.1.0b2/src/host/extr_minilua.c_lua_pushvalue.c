
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int top; } ;
typedef TYPE_1__ lua_State ;


 int api_incr_top (TYPE_1__*) ;
 int index2adr (TYPE_1__*,int) ;
 int setobj (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void lua_pushvalue(lua_State*L,int idx){
setobj(L,L->top,index2adr(L,idx));
api_incr_top(L);
}
