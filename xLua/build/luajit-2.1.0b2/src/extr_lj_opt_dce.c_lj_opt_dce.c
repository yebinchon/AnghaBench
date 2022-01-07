
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int bpropcache; } ;
typedef TYPE_1__ jit_State ;


 int JIT_F_OPT_DCE ;
 int dce_marksnap (TYPE_1__*) ;
 int dce_propagate (TYPE_1__*) ;
 int memset (int ,int ,int) ;

void lj_opt_dce(jit_State *J)
{
  if ((J->flags & JIT_F_OPT_DCE)) {
    dce_marksnap(J);
    dce_propagate(J);
    memset(J->bpropcache, 0, sizeof(J->bpropcache));
  }
}
