
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PWCHAR ;
typedef int PINFCONTEXT ;
typedef int BOOLEAN ;


 int INF_SUCCESS (int ) ;
 int InfpGetDataField (int ,int ,int *) ;

BOOLEAN
InfGetDataField (PINFCONTEXT Context,
                 ULONG FieldIndex,
                 PWCHAR *Data)
{
  return INF_SUCCESS(InfpGetDataField(Context, FieldIndex, Data));
}
