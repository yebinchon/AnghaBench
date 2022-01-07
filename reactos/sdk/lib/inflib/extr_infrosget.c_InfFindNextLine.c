
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PINFCONTEXT ;
typedef int BOOLEAN ;


 int INF_SUCCESS (int ) ;
 int InfpFindNextLine (int ,int ) ;

BOOLEAN
InfFindNextLine(PINFCONTEXT ContextIn,
                 PINFCONTEXT ContextOut)
{
  return INF_SUCCESS(InfpFindNextLine(ContextIn, ContextOut));
}
