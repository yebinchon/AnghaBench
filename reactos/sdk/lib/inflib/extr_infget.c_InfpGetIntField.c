
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {int Data; struct TYPE_5__* Next; } ;
struct TYPE_4__ {TYPE_2__* FirstField; int Key; scalar_t__ FieldCount; } ;
typedef int PWCHAR ;
typedef int * PINFCONTEXT ;
typedef TYPE_1__* PINFCACHELINE ;
typedef TYPE_2__* PINFCACHEFIELD ;
typedef scalar_t__ LONG ;
typedef scalar_t__ INT ;
typedef int INFSTATUS ;


 int DPRINT (char*) ;
 int INF_STATUS_INVALID_PARAMETER ;
 int INF_STATUS_SUCCESS ;
 TYPE_1__* InfpGetLineForContext (int *) ;
 scalar_t__ strtolW (int ,int *,int ) ;

INFSTATUS
InfpGetIntField(PINFCONTEXT Context,
                ULONG FieldIndex,
                INT *IntegerValue)
{
  PINFCACHELINE CacheLine;
  PINFCACHEFIELD CacheField;
  ULONG Index;
  PWCHAR Ptr;

  if (Context == ((void*)0) || IntegerValue == ((void*)0))
    {
      DPRINT("Invalid parameter\n");
      return INF_STATUS_INVALID_PARAMETER;
    }

  CacheLine = InfpGetLineForContext(Context);

  if (FieldIndex > (ULONG)CacheLine->FieldCount)
    {
      DPRINT("Invalid parameter\n");
      return INF_STATUS_INVALID_PARAMETER;
    }

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

  *IntegerValue = (LONG)strtolW(Ptr, ((void*)0), 0);

  return INF_STATUS_SUCCESS;
}
