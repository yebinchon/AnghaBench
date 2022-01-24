#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ POINT ;
typedef  TYPE_1__* LPPOINT ;
typedef  scalar_t__ HDC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 

void FUNC5()
{
    HDC hdc;
    POINT ptOldOrg;

    hdc = FUNC0(0);
    FUNC3(hdc != 0, "could not ceate DC\n");

    FUNC2(0, 0, 0, NULL, 0, ERROR_INVALID_HANDLE);
    FUNC2(0, 0, 0, (LPPOINT)-1, 0, ERROR_INVALID_HANDLE);
    FUNC2(0, 0, 0, &ptOldOrg, 0, ERROR_INVALID_HANDLE);
    FUNC2(hdc, 1, 2, &ptOldOrg, 1, 0);
    FUNC4(ptOldOrg.x, 0);
    FUNC4(ptOldOrg.y, 0);
    FUNC1(hdc, 0, 0, &ptOldOrg);
    FUNC4(ptOldOrg.x, 1);
    FUNC4(ptOldOrg.y, 2);

    ptOldOrg.x = 0; ptOldOrg.y = 0;
    FUNC2(hdc, 1, 2, (LPPOINT)-1, -1, 0);
    FUNC1(hdc, 0, 0, &ptOldOrg);
    FUNC4(ptOldOrg.x, 0);
    FUNC4(ptOldOrg.y, 0);


    FUNC2(hdc, -10000, -20000000, &ptOldOrg, 1, 0);
    FUNC4(ptOldOrg.x, 0);
    FUNC4(ptOldOrg.y, 0);
    FUNC1(hdc, 0, 0, &ptOldOrg);
    FUNC4(ptOldOrg.x, -10000);
    FUNC4(ptOldOrg.y, -20000000);


}