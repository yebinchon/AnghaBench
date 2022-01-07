
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int lua_State ;
struct TYPE_3__ {int flags; int param; } ;
typedef TYPE_1__ jit_State ;


 int G (int *) ;
 int JIT_F_ON ;
 int JIT_F_OPT_DEFAULT ;
 TYPE_1__* L2J (int *) ;
 int UNUSED (int) ;
 int jit_cpudetect (int *) ;
 int jit_param_default ;
 int lj_dispatch_update (int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void jit_init(lua_State *L)
{
  uint32_t flags = jit_cpudetect(L);






  UNUSED(flags);

}
