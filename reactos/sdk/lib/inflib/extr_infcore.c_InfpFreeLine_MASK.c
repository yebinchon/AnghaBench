#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * LastField; struct TYPE_6__* FirstField; struct TYPE_6__* Next; struct TYPE_6__* Key; } ;
typedef  TYPE_1__* PINFCACHELINE ;
typedef  TYPE_1__* PINFCACHEFIELD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static PINFCACHELINE
FUNC1 (PINFCACHELINE Line)
{
  PINFCACHELINE Next;
  PINFCACHEFIELD Field;

  if (Line == NULL)
    {
      return NULL;
    }

  Next = Line->Next;
  if (Line->Key != NULL)
    {
      FUNC0 (Line->Key);
      Line->Key = NULL;
    }

  /* Remove data fields */
  while (Line->FirstField != NULL)
    {
      Field = Line->FirstField->Next;
      FUNC0 (Line->FirstField);
      Line->FirstField = Field;
    }
  Line->LastField = NULL;

  FUNC0 (Line);

  return Next;
}