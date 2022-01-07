
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stack_last; int base; scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;


 int luai_apicheck (TYPE_1__*,int) ;
 int setnilvalue (int ) ;

__attribute__((used)) static void lua_settop(lua_State*L,int idx){
if(idx>=0){
luai_apicheck(L,idx<=L->stack_last-L->base);
while(L->top<L->base+idx)
setnilvalue(L->top++);
L->top=L->base+idx;
}
else{
luai_apicheck(L,-(idx+1)<=(L->top-L->base));
L->top+=idx+1;
}
}
