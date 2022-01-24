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
struct TYPE_4__ {int cbSize; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_1__ COMBOBOXINFO ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(HWND hwnd, COMBOBOXINFO *info)
{
    BOOL ret;

    info->cbSize = sizeof(*info);
    ret = FUNC0(hwnd, info);
    FUNC2(ret, "Failed to get combobox info structure, error %d\n", FUNC1());
}