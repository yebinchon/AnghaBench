#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ himl; scalar_t__ uAlign; int /*<<< orphan*/  margin; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  scalar_t__ HIMAGELIST ;
typedef  TYPE_1__ BUTTON_IMAGELIST ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BCM_GETIMAGELIST ; 
 int /*<<< orphan*/  BCM_SETIMAGELIST ; 
 int /*<<< orphan*/ * FUNC0 (char*,char*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC6()
{
    HWND hwnd1;
    BOOL ret;
    BUTTON_IMAGELIST imlData;

    hwnd1 = FUNC0(L"Button", L"Test2", 0, 10, 10, 100, 100, 0, NULL, NULL, NULL);
    FUNC4 (hwnd1 != NULL, "Expected CreateWindowW to succeed\n");

    ret = FUNC2(hwnd1, BCM_GETIMAGELIST, 0, (LPARAM)&imlData);
    FUNC4 (ret == TRUE, "Expected BCM_GETIMAGELIST to succeed\n");
    FUNC4 (imlData.himl == 0, "Expected 0 himl\n");
    FUNC4 (imlData.uAlign == 0, "Expected 0 uAlign\n");
    FUNC5(imlData.margin, 0, 0, 0, 0);
    
    FUNC3(&imlData.margin, 0,0,0,1);
    ret = FUNC2(hwnd1, BCM_SETIMAGELIST, 0, (LPARAM)&imlData);
    FUNC4 (ret == FALSE, "Expected BCM_SETIMAGELIST to fail\n"); /* This works in win10 */

    imlData.himl = (HIMAGELIST)0xdead;
    ret = FUNC2(hwnd1, BCM_SETIMAGELIST, 0, (LPARAM)&imlData);
    FUNC4 (ret == TRUE, "Expected BCM_SETIMAGELIST to fail\n");
    
    ret = FUNC2(hwnd1, BCM_GETIMAGELIST, 0, (LPARAM)&imlData);
    FUNC4 (ret == TRUE, "Expected BCM_GETIMAGELIST to succeed\n");
    FUNC4 (imlData.himl == (HIMAGELIST)0xdead, "Expected 0 himl\n");
    FUNC4 (imlData.uAlign == 0, "Expected 0 uAlign\n");
    FUNC5(imlData.margin, 0, 0, 0, 1);

    imlData.himl = 0;
    ret = FUNC2(hwnd1, BCM_SETIMAGELIST, 0, (LPARAM)&imlData);
    FUNC4 (ret == FALSE, "Expected BCM_SETIMAGELIST to fail\n"); /* This works in win10 */

    FUNC1(hwnd1);
}