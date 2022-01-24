#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int /*<<< orphan*/  dwModuleBase; int /*<<< orphan*/  hProcess; } ;
typedef  TYPE_1__* PENUMINFO ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TI_GET_TYPE ; 

VOID
FUNC2(DWORD dwTypeIndex, PENUMINFO pei, INT indent)
{
	DWORD dwTypeId;

	FUNC1(pei->hProcess, pei->dwModuleBase, dwTypeIndex, TI_GET_TYPE, &dwTypeId);
	FUNC0(dwTypeId, pei, indent, FALSE);
}