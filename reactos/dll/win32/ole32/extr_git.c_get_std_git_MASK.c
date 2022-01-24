#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int nextCookie; TYPE_3__ IGlobalInterfaceTable_iface; int /*<<< orphan*/  list; } ;
typedef  TYPE_1__ StdGlobalInterfaceTableImpl ;
typedef  int /*<<< orphan*/  IGlobalInterfaceTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (void**,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  StdGlobalInterfaceTableImpl_Vtbl ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * std_git ; 

IGlobalInterfaceTable* FUNC6(void)
{
  if (!std_git)
  {
    StdGlobalInterfaceTableImpl* newGIT;

    newGIT = FUNC1(FUNC0(), 0, sizeof(StdGlobalInterfaceTableImpl));
    if (!newGIT) return NULL;

    newGIT->IGlobalInterfaceTable_iface.lpVtbl = &StdGlobalInterfaceTableImpl_Vtbl;
    FUNC5(&newGIT->list);
    newGIT->nextCookie = 0xf100; /* that's where windows starts, so that's where we start */

    if (FUNC3((void**)&std_git, &newGIT->IGlobalInterfaceTable_iface, NULL))
    {
      FUNC2(FUNC0(), 0, newGIT);
    }
    else
      FUNC4("Created the GIT at %p\n", newGIT);
  }

  return std_git;
}