
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ jit_State ;
typedef int cTValue ;


 int JIT_F_OPT_NARROW ;
 scalar_t__ LJ_DUALNUM ;
 int numV (int *) ;
 int numisint (int ) ;
 scalar_t__ tvisint (int *) ;

__attribute__((used)) static int narrow_forl(jit_State *J, cTValue *o)
{
  if (tvisint(o)) return 1;
  if (LJ_DUALNUM || (J->flags & JIT_F_OPT_NARROW)) return numisint(numV(o));
  return 0;
}
