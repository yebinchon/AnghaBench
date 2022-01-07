
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * LastField; struct TYPE_6__* FirstField; struct TYPE_6__* Next; struct TYPE_6__* Key; } ;
typedef TYPE_1__* PINFCACHELINE ;
typedef TYPE_1__* PINFCACHEFIELD ;


 int FREE (TYPE_1__*) ;

__attribute__((used)) static PINFCACHELINE
InfpFreeLine (PINFCACHELINE Line)
{
  PINFCACHELINE Next;
  PINFCACHEFIELD Field;

  if (Line == ((void*)0))
    {
      return ((void*)0);
    }

  Next = Line->Next;
  if (Line->Key != ((void*)0))
    {
      FREE (Line->Key);
      Line->Key = ((void*)0);
    }


  while (Line->FirstField != ((void*)0))
    {
      Field = Line->FirstField->Next;
      FREE (Line->FirstField);
      Line->FirstField = Field;
    }
  Line->LastField = ((void*)0);

  FREE (Line);

  return Next;
}
