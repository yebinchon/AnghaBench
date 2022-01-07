
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_5__ {TYPE_1__* L; } ;
typedef TYPE_2__ jit_State ;
struct TYPE_4__ {int * base; } ;
typedef int TValue ;


 scalar_t__ bc_b (int ) ;
 scalar_t__ frame_islua (int *) ;
 int * frame_pc (int *) ;

__attribute__((used)) static ptrdiff_t results_wanted(jit_State *J)
{
  TValue *frame = J->L->base-1;
  if (frame_islua(frame))
    return (ptrdiff_t)bc_b(frame_pc(frame)[-1]) - 1;
  else
    return -1;
}
