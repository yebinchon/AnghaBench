#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * PINFCONTEXT ;
typedef  int /*<<< orphan*/  PINFCACHELINE ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  INFSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  INF_STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  INF_STATUS_NO_MEMORY ; 
 int /*<<< orphan*/  INF_STATUS_SUCCESS ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

INFSTATUS
FUNC4(PINFCONTEXT Context, PCWSTR Data)
{
  PINFCACHELINE Line;

  if (NULL == Context)
    {
      FUNC1("Invalid parameter\n");
      return INF_STATUS_INVALID_PARAMETER;
    }

  Line = FUNC3(Context);
  if (NULL == FUNC2(Line, Data))
    {
      FUNC0("Failed to add field\n");
      return INF_STATUS_NO_MEMORY;
    }

  return INF_STATUS_SUCCESS;
}