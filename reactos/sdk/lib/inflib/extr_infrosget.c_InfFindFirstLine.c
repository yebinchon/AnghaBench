
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PINFCONTEXT ;
typedef int PCWSTR ;
typedef int HINF ;
typedef int BOOLEAN ;


 int INF_SUCCESS (int ) ;
 int InfpFindFirstLine (int ,int ,int ,int *) ;

BOOLEAN
InfFindFirstLine(HINF InfHandle,
                 PCWSTR Section,
                 PCWSTR Key,
                 PINFCONTEXT *Context)
{
  return INF_SUCCESS(InfpFindFirstLine(InfHandle, Section, Key, Context));
}
