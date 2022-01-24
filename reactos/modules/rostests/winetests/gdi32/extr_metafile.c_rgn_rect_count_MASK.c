#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ nCount; } ;
struct TYPE_7__ {TYPE_1__ rdh; } ;
typedef  TYPE_2__ RGNDATA ;
typedef  int /*<<< orphan*/  HRGN ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static DWORD FUNC4(HRGN hrgn)
{
    DWORD size;
    RGNDATA *data;

    if (!hrgn) return 0;
    if (!(size = FUNC1(hrgn, 0, NULL))) return 0;
    if (!(data = FUNC2(FUNC0(), 0, size))) return 0;
    FUNC1(hrgn, size, data);
    size = data->rdh.nCount;
    FUNC3(FUNC0(), 0, data);
    return size;
}