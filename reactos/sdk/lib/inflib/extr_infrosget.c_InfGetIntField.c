
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PINFCONTEXT ;
typedef int INT ;
typedef int BOOLEAN ;


 int INF_SUCCESS (int ) ;
 int InfpGetIntField (int ,int ,int *) ;

BOOLEAN
InfGetIntField(PINFCONTEXT Context,
               ULONG FieldIndex,
               INT *IntegerValue)
{
  return INF_SUCCESS(InfpGetIntField(Context, FieldIndex, IntegerValue));
}
