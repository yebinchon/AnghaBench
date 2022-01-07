
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* L; } ;
typedef TYPE_2__ jit_State ;
typedef int int32_t ;
struct TYPE_5__ {int * base; } ;
typedef int TRef ;
typedef scalar_t__ IRType ;
typedef size_t BCReg ;


 int IRSLOAD_CONVERT ;
 int IRSLOAD_TYPECHECK ;
 int IRT_GUARD ;
 scalar_t__ IRT_INT ;
 int sloadt (TYPE_2__*,int ,scalar_t__,int) ;
 int tvisint (int *) ;

__attribute__((used)) static TRef fori_load(jit_State *J, BCReg slot, IRType t, int mode)
{
  int conv = (tvisint(&J->L->base[slot]) != (t==IRT_INT)) ? IRSLOAD_CONVERT : 0;
  return sloadt(J, (int32_t)slot,
  t + (((mode & IRSLOAD_TYPECHECK) ||
        (conv && t == IRT_INT && !(mode >> 16))) ?
       IRT_GUARD : 0),
  mode + conv);
}
