
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PINFCONTEXT ;
typedef int PINFCACHE ;
typedef int PCWSTR ;
typedef scalar_t__ HINF ;
typedef int BOOLEAN ;


 int INF_SUCCESS (int ) ;
 int InfpFindOrAddSection (int ,int ,int *) ;

BOOLEAN
InfFindOrAddSection(HINF InfHandle,
                    PCWSTR Section,
                    PINFCONTEXT *Context)
{
  return INF_SUCCESS(InfpFindOrAddSection((PINFCACHE) InfHandle,
                                          Section, Context));
}
