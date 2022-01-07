
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* base_ci; TYPE_3__* ci; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_8__ {int i_ci; } ;
typedef TYPE_2__ lua_Debug ;
struct TYPE_9__ {scalar_t__ tailcalls; } ;
typedef TYPE_3__ CallInfo ;


 int cast_int (int) ;
 scalar_t__ f_isLua (TYPE_3__*) ;

__attribute__((used)) static int lua_getstack(lua_State*L,int level,lua_Debug*ar){
int status;
CallInfo*ci;
for(ci=L->ci;level>0&&ci>L->base_ci;ci--){
level--;
if(f_isLua(ci))
level-=ci->tailcalls;
}
if(level==0&&ci>L->base_ci){
status=1;
ar->i_ci=cast_int(ci-L->base_ci);
}
else if(level<0){
status=1;
ar->i_ci=0;
}
else status=0;
return status;
}
