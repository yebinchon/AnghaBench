#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_5__ {int /*<<< orphan*/  Data; struct TYPE_5__* Next; } ;
struct TYPE_4__ {TYPE_2__* FirstField; int /*<<< orphan*/  Key; scalar_t__ FieldCount; } ;
typedef  int /*<<< orphan*/  PWCHAR ;
typedef  int /*<<< orphan*/ * PINFCONTEXT ;
typedef  TYPE_1__* PINFCACHELINE ;
typedef  TYPE_2__* PINFCACHEFIELD ;
typedef  int /*<<< orphan*/  INFSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  INF_STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  INF_STATUS_SUCCESS ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 

INFSTATUS
FUNC2(PINFCONTEXT Context,
                 ULONG FieldIndex,
                 PWCHAR *Data)
{
  PINFCACHELINE CacheLine;
  PINFCACHEFIELD CacheField;
  ULONG Index;

  if (Context == NULL || Data == NULL)
    {
      FUNC0("Invalid parameter\n");
      return INF_STATUS_INVALID_PARAMETER;
    }

  CacheLine = FUNC1(Context);

  if (FieldIndex > (ULONG)CacheLine->FieldCount)
    return INF_STATUS_INVALID_PARAMETER;

  if (FieldIndex == 0)
    {
      *Data = CacheLine->Key;
    }
  else
    {
      CacheField = CacheLine->FirstField;
      for (Index = 1; Index < FieldIndex; Index++)
        CacheField = CacheField->Next;

      *Data = CacheField->Data;
    }

  return INF_STATUS_SUCCESS;
}