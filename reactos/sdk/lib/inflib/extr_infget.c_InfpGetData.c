
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* FirstField; int * Key; } ;
struct TYPE_4__ {int * Data; } ;
typedef int * PWCHAR ;
typedef int * PINFCONTEXT ;
typedef TYPE_2__* PINFCACHELINE ;
typedef int INFSTATUS ;


 int DPRINT (char*) ;
 int INF_STATUS_INVALID_PARAMETER ;
 int INF_STATUS_SUCCESS ;
 TYPE_2__* InfpGetLineForContext (int *) ;

INFSTATUS
InfpGetData(PINFCONTEXT Context,
            PWCHAR *Key,
            PWCHAR *Data)
{
  PINFCACHELINE CacheKey;

  if (Context == ((void*)0) || Data == ((void*)0))
    {
      DPRINT("Invalid parameter\n");
      return INF_STATUS_INVALID_PARAMETER;
    }

  CacheKey = InfpGetLineForContext(Context);
  if (Key != ((void*)0))
    *Key = CacheKey->Key;

  if (Data != ((void*)0))
    {
      if (CacheKey->FirstField == ((void*)0))
        {
          *Data = ((void*)0);
        }
      else
        {
          *Data = CacheKey->FirstField->Data;
        }
    }

  return INF_STATUS_SUCCESS;
}
