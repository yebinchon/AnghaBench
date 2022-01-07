
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_9__ {int Data; struct TYPE_9__* Next; } ;
struct TYPE_8__ {TYPE_3__* FirstField; int Key; scalar_t__ FieldCount; } ;
struct TYPE_7__ {int Inf; } ;
typedef scalar_t__ SIZE_T ;
typedef int * PWSTR ;
typedef int PWCHAR ;
typedef scalar_t__* PULONG ;
typedef TYPE_1__* PINFCONTEXT ;
typedef TYPE_2__* PINFCACHELINE ;
typedef TYPE_3__* PINFCACHEFIELD ;
typedef int INFSTATUS ;


 int DPRINT (char*) ;
 int INF_STATUS_BUFFER_OVERFLOW ;
 int INF_STATUS_INVALID_PARAMETER ;
 int INF_STATUS_SUCCESS ;
 TYPE_2__* InfpGetLineForContext (TYPE_1__*) ;
 scalar_t__ InfpSubstituteString (int ,int ,int *,scalar_t__) ;

INFSTATUS
InfpGetStringField(PINFCONTEXT Context,
                   ULONG FieldIndex,
                   PWSTR ReturnBuffer,
                   ULONG ReturnBufferSize,
                   PULONG RequiredSize)
{
  PINFCACHELINE CacheLine;
  PINFCACHEFIELD CacheField;
  ULONG Index;
  PWCHAR Ptr;
  SIZE_T Size;

  if (Context == ((void*)0))
    {
      DPRINT("Invalid parameter\n");
      return INF_STATUS_INVALID_PARAMETER;
    }

  if (RequiredSize != ((void*)0))
    *RequiredSize = 0;

  CacheLine = InfpGetLineForContext(Context);

  if (FieldIndex > (ULONG)CacheLine->FieldCount)
    return INF_STATUS_INVALID_PARAMETER;

  if (FieldIndex == 0)
    {
      Ptr = CacheLine->Key;
    }
  else
    {
      CacheField = CacheLine->FirstField;
      for (Index = 1; Index < FieldIndex; Index++)
        CacheField = CacheField->Next;

      Ptr = CacheField->Data;
    }


  Size = InfpSubstituteString(Context->Inf,
                              Ptr,
                              ((void*)0),
                              0);

  if (RequiredSize != ((void*)0))
    *RequiredSize = (ULONG)Size + 1;

  if (ReturnBuffer != ((void*)0))
    {
      if (ReturnBufferSize <= Size)
        return INF_STATUS_BUFFER_OVERFLOW;


      InfpSubstituteString(Context->Inf,
                           Ptr,
                           ReturnBuffer,
                           ReturnBufferSize);
    }

  return INF_STATUS_SUCCESS;
}
