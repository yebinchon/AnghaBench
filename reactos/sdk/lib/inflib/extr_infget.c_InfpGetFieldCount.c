
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int FieldCount; } ;
typedef int PINFCONTEXT ;
typedef TYPE_1__* PINFCACHELINE ;
typedef int LONG ;


 TYPE_1__* InfpGetLineForContext (int ) ;

LONG
InfpGetFieldCount(PINFCONTEXT Context)
{
  PINFCACHELINE Line;

  Line = InfpGetLineForContext(Context);
  if (Line == ((void*)0))
    return 0;
  return Line->FieldCount;
}
