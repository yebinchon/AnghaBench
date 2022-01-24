#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_6__ {struct TYPE_6__* Prev; struct TYPE_6__* Next; int /*<<< orphan*/  Data; } ;
struct TYPE_5__ {int /*<<< orphan*/  FieldCount; TYPE_2__* LastField; TYPE_2__* FirstField; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_1__* PINFCACHELINE ;
typedef  TYPE_2__* PINFCACHEFIELD ;
typedef  int /*<<< orphan*/ * PCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFCACHEFIELD ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

PVOID
FUNC6(PINFCACHELINE Line,
                   PCWSTR Data)
{
  PINFCACHEFIELD Field;
  ULONG Size;

  Size = (ULONG)FUNC1(INFCACHEFIELD,
                             Data[FUNC5(Data) + 1]);
  Field = (PINFCACHEFIELD)FUNC2(Size);
  if (Field == NULL)
    {
      FUNC0("MALLOC() failed\n");
      return NULL;
    }
  FUNC3 (Field,
              Size);
  FUNC4(Field->Data, Data);

  /* Append key */
  if (Line->FirstField == NULL)
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