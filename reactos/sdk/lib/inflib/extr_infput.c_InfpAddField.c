
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PINFCONTEXT ;
typedef int PINFCACHELINE ;
typedef int PCWSTR ;
typedef int INFSTATUS ;


 int DPRINT (char*) ;
 int DPRINT1 (char*) ;
 int INF_STATUS_INVALID_PARAMETER ;
 int INF_STATUS_NO_MEMORY ;
 int INF_STATUS_SUCCESS ;
 int * InfpAddFieldToLine (int ,int ) ;
 int InfpGetLineForContext (int *) ;

INFSTATUS
InfpAddField(PINFCONTEXT Context, PCWSTR Data)
{
  PINFCACHELINE Line;

  if (((void*)0) == Context)
    {
      DPRINT1("Invalid parameter\n");
      return INF_STATUS_INVALID_PARAMETER;
    }

  Line = InfpGetLineForContext(Context);
  if (((void*)0) == InfpAddFieldToLine(Line, Data))
    {
      DPRINT("Failed to add field\n");
      return INF_STATUS_NO_MEMORY;
    }

  return INF_STATUS_SUCCESS;
}
