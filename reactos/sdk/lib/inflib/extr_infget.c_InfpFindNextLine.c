
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* Next; } ;
struct TYPE_9__ {int Line; int Section; int Inf; } ;
struct TYPE_8__ {int Id; } ;
typedef TYPE_2__* PINFCONTEXT ;
typedef TYPE_3__* PINFCACHELINE ;
typedef int INFSTATUS ;


 int INF_STATUS_INVALID_PARAMETER ;
 int INF_STATUS_NOT_FOUND ;
 int INF_STATUS_SUCCESS ;
 TYPE_3__* InfpGetLineForContext (TYPE_2__*) ;

INFSTATUS
InfpFindNextLine(PINFCONTEXT ContextIn,
                 PINFCONTEXT ContextOut)
{
  PINFCACHELINE CacheLine;

  if (ContextIn == ((void*)0) || ContextOut == ((void*)0))
    return INF_STATUS_INVALID_PARAMETER;

  CacheLine = InfpGetLineForContext(ContextIn);
  if (CacheLine == ((void*)0))
    return INF_STATUS_INVALID_PARAMETER;

  if (CacheLine->Next == ((void*)0))
    return INF_STATUS_NOT_FOUND;

  if (ContextIn != ContextOut)
    {
      ContextOut->Inf = ContextIn->Inf;
      ContextOut->Section = ContextIn->Section;
    }
  ContextOut->Line = CacheLine->Next->Id;

  return INF_STATUS_SUCCESS;
}
