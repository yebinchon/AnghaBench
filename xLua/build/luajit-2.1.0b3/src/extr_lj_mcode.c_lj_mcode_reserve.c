
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * mctop; int * mcbot; int mcarea; } ;
typedef TYPE_1__ jit_State ;
typedef int MCode ;


 int MCPROT_GEN ;
 int mcode_allocarea (TYPE_1__*) ;
 int mcode_protect (TYPE_1__*,int ) ;

MCode *lj_mcode_reserve(jit_State *J, MCode **lim)
{
  if (!J->mcarea)
    mcode_allocarea(J);
  else
    mcode_protect(J, MCPROT_GEN);
  *lim = J->mcbot;
  return J->mctop;
}
