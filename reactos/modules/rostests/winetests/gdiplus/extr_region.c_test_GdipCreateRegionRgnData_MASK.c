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
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int GpStatus ;
typedef  int /*<<< orphan*/  GpRegion ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int InvalidParameter ; 
 int Ok ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int) ; 

__attribute__((used)) static void FUNC14(void)
{
    GpGraphics *graphics = NULL;
    GpRegion *region, *region2;
    HDC hdc = FUNC9(0);
    GpStatus status;
    BYTE buf[512];
    UINT needed;
    BOOL ret;

    status = FUNC2(NULL, 0, NULL);
    FUNC13(status == InvalidParameter, "status %d\n", status);

    status = FUNC0(hdc, &graphics);
    FUNC13(status == Ok, "status %d\n", status);

    status = FUNC1(&region);
    FUNC13(status == Ok, "status %d\n", status);

    /* infinite region */
    FUNC12(buf, 0xee, sizeof(buf));
    needed = 0;
    status = FUNC5(region, (BYTE*)buf, sizeof(buf), &needed);
    FUNC13(status == Ok, "status %d\n", status);
    FUNC11(20, needed);

    status = FUNC2(buf, needed, NULL);
    FUNC13(status == InvalidParameter, "status %d\n", status);

    status = FUNC2(buf, needed, &region2);
    FUNC13(status == Ok, "status %d\n", status);

    ret = FALSE;
    status = FUNC7(region2, graphics, &ret);
    FUNC13(status == Ok, "status %d\n", status);
    FUNC13(ret, "got %d\n", ret);
    FUNC4(region2);

    /* empty region */
    status = FUNC8(region);
    FUNC13(status == Ok, "status %d\n", status);

    FUNC12(buf, 0xee, sizeof(buf));
    needed = 0;
    status = FUNC5(region, (BYTE*)buf, sizeof(buf), &needed);
    FUNC13(status == Ok, "status %d\n", status);
    FUNC11(20, needed);

    status = FUNC2(buf, needed, &region2);
    FUNC13(status == Ok, "status %d\n", status);

    ret = FALSE;
    status = FUNC6(region2, graphics, &ret);
    FUNC13(status == Ok, "status %d\n", status);
    FUNC13(ret, "got %d\n", ret);
    FUNC4(region2);

    FUNC3(graphics);
    FUNC4(region);
    FUNC10(0, hdc);
}