
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p; } ;
struct TYPE_4__ {TYPE_1__ l; } ;
typedef int Proto ;
typedef int CallInfo ;


 TYPE_2__* ci_func (int *) ;
 scalar_t__ isLua (int *) ;

__attribute__((used)) static Proto*getluaproto(CallInfo*ci){
return(isLua(ci)?ci_func(ci)->l.p:((void*)0));
}
