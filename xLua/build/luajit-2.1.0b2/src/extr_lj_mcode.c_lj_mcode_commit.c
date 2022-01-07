
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * mctop; } ;
typedef TYPE_1__ jit_State ;
typedef int MCode ;


 int MCPROT_RUN ;
 int mcode_protect (TYPE_1__*,int ) ;

void lj_mcode_commit(jit_State *J, MCode *top)
{
  J->mctop = top;
  mcode_protect(J, MCPROT_RUN);
}
