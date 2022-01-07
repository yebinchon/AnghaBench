
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ ci; scalar_t__ base_ci; } ;
typedef TYPE_2__ lua_State ;
typedef int Table ;
struct TYPE_8__ {int * env; } ;
struct TYPE_10__ {TYPE_1__ c; } ;
typedef TYPE_3__ Closure ;


 TYPE_3__* curr_func (TYPE_2__*) ;
 int gt (TYPE_2__*) ;
 int * hvalue (int ) ;

__attribute__((used)) static Table*getcurrenv(lua_State*L){
if(L->ci==L->base_ci)
return hvalue(gt(L));
else{
Closure*func=curr_func(L);
return func->c.env;
}
}
