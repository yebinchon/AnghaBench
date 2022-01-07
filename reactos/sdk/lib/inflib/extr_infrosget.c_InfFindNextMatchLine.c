
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PINFCONTEXT ;
typedef int PCWSTR ;
typedef int BOOLEAN ;


 int INF_SUCCESS (int ) ;
 int InfpFindNextMatchLine (int ,int ,int ) ;

BOOLEAN
InfFindNextMatchLine(PINFCONTEXT ContextIn,
                     PCWSTR Key,
                     PINFCONTEXT ContextOut)
{
  return INF_SUCCESS(InfpFindNextMatchLine(ContextIn, Key, ContextOut));
}
