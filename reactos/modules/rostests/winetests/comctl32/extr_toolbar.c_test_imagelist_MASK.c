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
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/ * HIMAGELIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TB_GETIMAGELIST ; 
 int /*<<< orphan*/  TB_SETBITMAPSIZE ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC5(void)
{
    HIMAGELIST imagelist;
    HWND hwnd = NULL;
    int ret;

    FUNC4(&hwnd);

    imagelist = (HIMAGELIST)FUNC2(hwnd, TB_GETIMAGELIST, 0, 0);
    FUNC3(imagelist == NULL, "got %p\n", *imagelist);

    ret = FUNC2(hwnd, TB_SETBITMAPSIZE, 0, FUNC1(16, 16));
    FUNC3(ret, "got %d\n", ret);

    imagelist = (HIMAGELIST)FUNC2(hwnd, TB_GETIMAGELIST, 0, 0);
    FUNC3(imagelist == NULL, "got %p\n", *imagelist);

    FUNC0(hwnd);
}