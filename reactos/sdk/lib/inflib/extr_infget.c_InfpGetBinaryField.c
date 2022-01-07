
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
typedef scalar_t__ UCHAR ;
struct TYPE_5__ {struct TYPE_5__* Next; int Data; } ;
struct TYPE_4__ {scalar_t__ FieldCount; TYPE_2__* FirstField; } ;
typedef scalar_t__* PULONG ;
typedef scalar_t__* PUCHAR ;
typedef int * PINFCONTEXT ;
typedef TYPE_1__* PINFCACHELINE ;
typedef TYPE_2__* PINFCACHEFIELD ;
typedef int INFSTATUS ;


 int DPRINT (char*) ;
 int INF_STATUS_BUFFER_OVERFLOW ;
 int INF_STATUS_INVALID_PARAMETER ;
 int INF_STATUS_NOT_FOUND ;
 int INF_STATUS_SUCCESS ;
 TYPE_1__* InfpGetLineForContext (int *) ;
 scalar_t__ strtoulW (int ,int *,int) ;

INFSTATUS
InfpGetBinaryField(PINFCONTEXT Context,
                   ULONG FieldIndex,
                   PUCHAR ReturnBuffer,
                   ULONG ReturnBufferSize,
                   PULONG RequiredSize)
{
  PINFCACHELINE CacheLine;
  PINFCACHEFIELD CacheField;
  ULONG Index;
  ULONG Size;
  PUCHAR Ptr;

  if (Context == ((void*)0) || FieldIndex == 0)
    {
      DPRINT("Invalid parameter\n");
      return INF_STATUS_INVALID_PARAMETER;
    }

  if (RequiredSize != ((void*)0))
    *RequiredSize = 0;

  CacheLine = InfpGetLineForContext(Context);

  if (FieldIndex > (ULONG)CacheLine->FieldCount)
    return INF_STATUS_NOT_FOUND;

  CacheField = CacheLine->FirstField;
  for (Index = 1; Index < FieldIndex; Index++)
    CacheField = CacheField->Next;

  Size = (ULONG)CacheLine->FieldCount - FieldIndex + 1;

  if (RequiredSize != ((void*)0))
    *RequiredSize = Size;

  if (ReturnBuffer != ((void*)0))
    {
      if (ReturnBufferSize < Size)
        return INF_STATUS_BUFFER_OVERFLOW;


      Ptr = ReturnBuffer;
      while (CacheField != ((void*)0))
        {
          *Ptr = (UCHAR)strtoulW(CacheField->Data, ((void*)0), 16);

          Ptr++;
          CacheField = CacheField->Next;
        }
    }

  return INF_STATUS_SUCCESS;
}
