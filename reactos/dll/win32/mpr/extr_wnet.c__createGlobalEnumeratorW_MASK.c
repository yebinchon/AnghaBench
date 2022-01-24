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
typedef  int /*<<< orphan*/  WNetEnumerator ;
struct TYPE_5__ {int /*<<< orphan*/  net; } ;
struct TYPE_6__ {TYPE_1__ specific; void* dwUsage; void* dwType; void* dwScope; int /*<<< orphan*/  enumType; } ;
typedef  TYPE_2__* PWNetEnumerator ;
typedef  int /*<<< orphan*/  LPNETRESOURCEW ;
typedef  void* DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  WNET_ENUMERATOR_TYPE_GLOBAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PWNetEnumerator FUNC3(DWORD dwScope, DWORD dwType,
 DWORD dwUsage, LPNETRESOURCEW lpNet)
{
    PWNetEnumerator ret = FUNC1(FUNC0(),
     HEAP_ZERO_MEMORY, sizeof(WNetEnumerator));

    if (ret)
    {
        ret->enumType = WNET_ENUMERATOR_TYPE_GLOBAL;
        ret->dwScope = dwScope;
        ret->dwType  = dwType;
        ret->dwUsage = dwUsage;
        ret->specific.net = FUNC2(lpNet);
    }
    return ret;
}