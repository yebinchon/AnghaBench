
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int p; } ;
struct TYPE_4__ {TYPE_1__ l; } ;
typedef int CallInfo ;


 TYPE_2__* ci_func (int *) ;
 int currentpc (int *,int *) ;
 int getline (int ,int) ;

__attribute__((used)) static int currentline (lua_State *L, CallInfo *ci) {
  int pc = currentpc(L, ci);
  if (pc < 0)
    return -1;
  else
    return getline(ci_func(ci)->l.p, pc);
}
