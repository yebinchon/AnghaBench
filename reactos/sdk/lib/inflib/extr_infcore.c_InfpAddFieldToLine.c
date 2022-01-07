
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_6__ {struct TYPE_6__* Prev; struct TYPE_6__* Next; int Data; } ;
struct TYPE_5__ {int FieldCount; TYPE_2__* LastField; TYPE_2__* FirstField; } ;
typedef int * PVOID ;
typedef TYPE_1__* PINFCACHELINE ;
typedef TYPE_2__* PINFCACHEFIELD ;
typedef int * PCWSTR ;


 int DPRINT1 (char*) ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int INFCACHEFIELD ;
 scalar_t__ MALLOC (scalar_t__) ;
 int ZEROMEMORY (TYPE_2__*,scalar_t__) ;
 int strcpyW (int ,int *) ;
 int strlenW (int *) ;

PVOID
InfpAddFieldToLine(PINFCACHELINE Line,
                   PCWSTR Data)
{
  PINFCACHEFIELD Field;
  ULONG Size;

  Size = (ULONG)FIELD_OFFSET(INFCACHEFIELD,
                             Data[strlenW(Data) + 1]);
  Field = (PINFCACHEFIELD)MALLOC(Size);
  if (Field == ((void*)0))
    {
      DPRINT1("MALLOC() failed\n");
      return ((void*)0);
    }
  ZEROMEMORY (Field,
              Size);
  strcpyW(Field->Data, Data);


  if (Line->FirstField == ((void*)0))
    {
      Line->FirstField = Field;
      Line->LastField = Field;
    }
  else
    {
      Line->LastField->Next = Field;
      Field->Prev = Line->LastField;
      Line->LastField = Field;
    }
  Line->FieldCount++;

  return (PVOID)Field;
}
