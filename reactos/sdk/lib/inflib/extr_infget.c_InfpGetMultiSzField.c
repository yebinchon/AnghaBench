
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_5__ {struct TYPE_5__* Next; int Data; } ;
struct TYPE_4__ {TYPE_2__* FirstField; scalar_t__ FieldCount; } ;
typedef scalar_t__* PWSTR ;
typedef scalar_t__* PWCHAR ;
typedef scalar_t__* PULONG ;
typedef int * PINFCONTEXT ;
typedef TYPE_1__* PINFCACHELINE ;
typedef TYPE_2__* PINFCACHEFIELD ;
typedef int INFSTATUS ;


 int DPRINT (char*) ;
 int INF_STATUS_BUFFER_OVERFLOW ;
 int INF_STATUS_INVALID_PARAMETER ;
 int INF_STATUS_SUCCESS ;
 TYPE_1__* InfpGetLineForContext (int *) ;
 int strcpyW (scalar_t__*,int ) ;
 scalar_t__ strlenW (int ) ;

INFSTATUS
InfpGetMultiSzField(PINFCONTEXT Context,
                    ULONG FieldIndex,
                    PWSTR ReturnBuffer,
                    ULONG ReturnBufferSize,
                    PULONG RequiredSize)
{
  PINFCACHELINE CacheLine;
  PINFCACHEFIELD CacheField;
  PINFCACHEFIELD FieldPtr;
  ULONG Index;
  ULONG Size;
  PWCHAR Ptr;

  if (Context == ((void*)0) || FieldIndex == 0)
    {
      DPRINT("Invalid parameter\n");
      return INF_STATUS_INVALID_PARAMETER;
    }

  if (RequiredSize != ((void*)0))
    *RequiredSize = 0;

  CacheLine = InfpGetLineForContext(Context);

  if (FieldIndex > (ULONG)CacheLine->FieldCount)
    return INF_STATUS_INVALID_PARAMETER;

  CacheField = CacheLine->FirstField;
  for (Index = 1; Index < FieldIndex; Index++)
    CacheField = CacheField->Next;


  FieldPtr = CacheField;
  Size = 0;
  while (FieldPtr != ((void*)0))
    {
      Size += ((ULONG)strlenW(FieldPtr->Data) + 1);
      FieldPtr = FieldPtr->Next;
    }
  Size++;

  if (RequiredSize != ((void*)0))
    *RequiredSize = Size;

  if (ReturnBuffer != ((void*)0))
    {
      if (ReturnBufferSize < Size)
        return INF_STATUS_BUFFER_OVERFLOW;


      Ptr = ReturnBuffer;
      FieldPtr = CacheField;
      while (FieldPtr != ((void*)0))
        {
          Size = (ULONG)strlenW(FieldPtr->Data) + 1;

          strcpyW(Ptr, FieldPtr->Data);

          Ptr = Ptr + Size;
          FieldPtr = FieldPtr->Next;
        }
      *Ptr = 0;
    }

  return INF_STATUS_SUCCESS;
}
