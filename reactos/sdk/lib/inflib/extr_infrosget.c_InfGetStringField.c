
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PWSTR ;
typedef int PULONG ;
typedef int PINFCONTEXT ;
typedef int BOOLEAN ;


 int INF_SUCCESS (int ) ;
 int InfpGetStringField (int ,int ,int ,int ,int ) ;

BOOLEAN
InfGetStringField(PINFCONTEXT Context,
                  ULONG FieldIndex,
                  PWSTR ReturnBuffer,
                  ULONG ReturnBufferSize,
                  PULONG RequiredSize)
{
  return INF_SUCCESS(InfpGetStringField(Context, FieldIndex, ReturnBuffer,
                                        ReturnBufferSize, RequiredSize));
}
