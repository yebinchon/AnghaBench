
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PINFCONTEXT ;


 int InfpFreeContext (int ) ;

VOID
InfHostFreeContext(PINFCONTEXT Context)
{
  InfpFreeContext(Context);
}
