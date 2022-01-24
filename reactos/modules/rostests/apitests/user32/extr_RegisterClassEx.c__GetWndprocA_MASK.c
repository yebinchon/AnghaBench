#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * WNDPROC ;
struct TYPE_3__ {int member_0; int /*<<< orphan*/ * lpfnWndProc; } ;
typedef  TYPE_1__ WNDCLASSEXA ;
typedef  int /*<<< orphan*/  WNDCLASSEX ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  HINSTANCE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static WNDPROC FUNC1(LPCSTR lpszClassName, HINSTANCE hInstance)
{
    WNDCLASSEXA wcex = {sizeof(WNDCLASSEX)};
    BOOL ret = FUNC0(hInstance, lpszClassName, &wcex);
    return ret ? wcex.lpfnWndProc : NULL;
}