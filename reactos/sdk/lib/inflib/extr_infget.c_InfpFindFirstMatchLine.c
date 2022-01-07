
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* Next; int Id; int * Key; } ;
struct TYPE_9__ {TYPE_3__* FirstLine; } ;
struct TYPE_8__ {int Line; int Section; int Inf; } ;
typedef TYPE_1__* PINFCONTEXT ;
typedef TYPE_2__* PINFCACHESECTION ;
typedef TYPE_3__* PINFCACHELINE ;
typedef scalar_t__* PCWSTR ;
typedef int INFSTATUS ;


 int INF_STATUS_INVALID_PARAMETER ;
 int INF_STATUS_NOT_FOUND ;
 int INF_STATUS_SUCCESS ;
 TYPE_2__* InfpGetSectionForContext (TYPE_1__*) ;
 scalar_t__ strcmpiW (int *,scalar_t__*) ;

INFSTATUS
InfpFindFirstMatchLine(PINFCONTEXT ContextIn,
                       PCWSTR Key,
                       PINFCONTEXT ContextOut)
{
  PINFCACHESECTION Section;
  PINFCACHELINE CacheLine;

  if (ContextIn == ((void*)0) || ContextOut == ((void*)0) || Key == ((void*)0) || *Key == 0)
    return INF_STATUS_INVALID_PARAMETER;

  Section = InfpGetSectionForContext(ContextIn);
  if (Section == ((void*)0))
      return INF_STATUS_INVALID_PARAMETER;

  CacheLine = Section->FirstLine;
  while (CacheLine != ((void*)0))
    {
      if (CacheLine->Key != ((void*)0) && strcmpiW (CacheLine->Key, Key) == 0)
        {

          if (ContextIn != ContextOut)
            {
              ContextOut->Inf = ContextIn->Inf;
              ContextOut->Section = ContextIn->Section;
            }
          ContextOut->Line = CacheLine->Id;

          return INF_STATUS_SUCCESS;
        }

      CacheLine = CacheLine->Next;
    }

  return INF_STATUS_NOT_FOUND;
}
