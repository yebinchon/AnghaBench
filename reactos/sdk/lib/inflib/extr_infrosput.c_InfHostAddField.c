
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PINFCONTEXT ;
typedef int PCWSTR ;
typedef int BOOLEAN ;


 int INF_SUCCESS (int ) ;
 int InfpAddField (int ,int ) ;

BOOLEAN
InfHostAddField(PINFCONTEXT Context, PCWSTR Data)
{
  return INF_SUCCESS(InfpAddField(Context, Data));
}
