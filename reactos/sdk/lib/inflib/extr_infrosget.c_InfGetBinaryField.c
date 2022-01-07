
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PULONG ;
typedef int PUCHAR ;
typedef int PINFCONTEXT ;
typedef int BOOLEAN ;


 int INF_SUCCESS (int ) ;
 int InfpGetBinaryField (int ,int ,int ,int ,int ) ;

BOOLEAN
InfGetBinaryField(PINFCONTEXT Context,
                  ULONG FieldIndex,
                  PUCHAR ReturnBuffer,
                  ULONG ReturnBufferSize,
                  PULONG RequiredSize)
{
  return INF_SUCCESS(InfpGetBinaryField(Context, FieldIndex, ReturnBuffer,
                                        ReturnBufferSize, RequiredSize));
}
