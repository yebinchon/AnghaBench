
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int Id; } ;
struct TYPE_7__ {int Line; } ;
typedef TYPE_1__* PINFCONTEXT ;
typedef int PINFCACHESECTION ;
typedef TYPE_2__* PINFCACHELINE ;
typedef int * PCWSTR ;
typedef int INFSTATUS ;


 int DPRINT (char*) ;
 int DPRINT1 (char*) ;
 int INF_STATUS_INVALID_PARAMETER ;
 int INF_STATUS_NO_MEMORY ;
 int INF_STATUS_SUCCESS ;
 int * InfpAddKeyToLine (TYPE_2__*,int *) ;
 TYPE_2__* InfpAddLine (int ) ;
 int InfpGetSectionForContext (TYPE_1__*) ;

INFSTATUS
InfpAddLineWithKey(PINFCONTEXT Context, PCWSTR Key)
{
  PINFCACHESECTION Section;
  PINFCACHELINE Line;

  if (((void*)0) == Context)
    {
      DPRINT1("Invalid parameter\n");
      return INF_STATUS_INVALID_PARAMETER;
    }

  Section = InfpGetSectionForContext(Context);
  Line = InfpAddLine(Section);
  if (((void*)0) == Line)
    {
      DPRINT("Failed to create line\n");
      return INF_STATUS_NO_MEMORY;
    }
  Context->Line = Line->Id;

  if (((void*)0) != Key && ((void*)0) == InfpAddKeyToLine(Line, Key))
    {
      DPRINT("Failed to add key\n");
      return INF_STATUS_NO_MEMORY;
    }

  return INF_STATUS_SUCCESS;
}
