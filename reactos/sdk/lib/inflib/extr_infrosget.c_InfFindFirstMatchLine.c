
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PINFCONTEXT ;
typedef int PCWSTR ;
typedef int BOOLEAN ;


 int INF_SUCCESS (int ) ;
 int InfpFindFirstMatchLine (int ,int ,int ) ;

BOOLEAN
InfFindFirstMatchLine(PINFCONTEXT ContextIn,
                      PCWSTR Key,
                      PINFCONTEXT ContextOut)
{
  return INF_SUCCESS(InfpFindFirstMatchLine(ContextIn, Key, ContextOut));
}
