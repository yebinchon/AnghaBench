
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_4__ {int baseslot; int base; int framedepth; } ;
typedef TYPE_1__ jit_State ;
typedef scalar_t__ BCReg ;


 int rec_call_setup (TYPE_1__*,scalar_t__,int ) ;

void lj_record_call(jit_State *J, BCReg func, ptrdiff_t nargs)
{
  rec_call_setup(J, func, nargs);

  J->framedepth++;
  J->base += func+1;
  J->baseslot += func+1;
}
