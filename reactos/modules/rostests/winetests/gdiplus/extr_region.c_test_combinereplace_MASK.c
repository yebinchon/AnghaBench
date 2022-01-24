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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {double X; double Y; double Width; double Height; } ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpRegion ;
typedef  TYPE_1__ GpRectF ;
typedef  int /*<<< orphan*/  GpPath ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int CombineModeReplace ; 
 int CombineModeUnion ; 
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int Ok ; 
 int RGNDATA_INFINITE_RECT ; 
 int RGNDATA_PATH ; 
 int RGNDATA_RECT ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(void)
{
    GpStatus status;
    GpRegion *region, *region2;
    GpPath *path;
    GpRectF rectf;
    UINT needed;
    DWORD buf[50];

    rectf.X = rectf.Y = 0.0;
    rectf.Width = rectf.Height = 100.0;

    status = FUNC6(&rectf, &region);
    FUNC11(Ok, status);

    /* replace with the same rectangle */
    status = FUNC2(region, &rectf,CombineModeReplace);
    FUNC11(Ok, status);

    status = FUNC10(region, &needed);
    FUNC11(Ok, status);
    FUNC11(36, needed);
    status = FUNC9(region, (BYTE*)buf, sizeof(buf), &needed);
    FUNC11(Ok, status);
    FUNC11(36, needed);
    FUNC12(buf, 28);
    FUNC14("buf[1] = %08x\n", buf[1]);
    FUNC13(buf + 2);
    FUNC12(buf + 3, 0);
    FUNC12(buf + 4, RGNDATA_RECT);

    /* replace with path */
    status = FUNC4(FillModeAlternate, &path);
    FUNC11(Ok, status);
    status = FUNC0(path, 0.0, 0.0, 100.0, 250.0);
    FUNC11(Ok, status);
    status = FUNC1(region, path, CombineModeReplace);
    FUNC11(Ok, status);

    status = FUNC10(region, &needed);
    FUNC11(Ok, status);
    FUNC11(156, needed);
    status = FUNC9(region, (BYTE*)buf, sizeof(buf), &needed);
    FUNC11(Ok, status);
    FUNC11(156, needed);
    FUNC12(buf, 148);
    FUNC14("buf[1] = %08x\n", buf[1]);
    FUNC13(buf + 2);
    FUNC12(buf + 3, 0);
    FUNC12(buf + 4, RGNDATA_PATH);
    FUNC7(path);

    /* replace with infinite rect */
    status = FUNC5(&region2);
    FUNC11(Ok, status);
    status = FUNC3(region, region2, CombineModeReplace);
    FUNC11(Ok, status);

    status = FUNC10(region, &needed);
    FUNC11(Ok, status);
    FUNC11(20, needed);
    status = FUNC9(region, (BYTE*)buf, sizeof(buf), &needed);
    FUNC11(Ok, status);
    FUNC11(20, needed);
    FUNC12(buf, 12);
    FUNC14("buf[1] = %08x\n", buf[1]);
    FUNC13(buf + 2);
    FUNC12(buf + 3, 0);
    FUNC12(buf + 4, RGNDATA_INFINITE_RECT);
    FUNC8(region2);

    /* more complex case : replace with a combined region */
    status = FUNC6(&rectf, &region2);
    FUNC11(Ok, status);
    status = FUNC4(FillModeAlternate, &path);
    FUNC11(Ok, status);
    status = FUNC0(path, 0.0, 0.0, 100.0, 250.0);
    FUNC11(Ok, status);
    status = FUNC1(region2, path, CombineModeUnion);
    FUNC11(Ok, status);
    FUNC7(path);
    status = FUNC3(region, region2, CombineModeReplace);
    FUNC11(Ok, status);
    FUNC8(region2);

    status = FUNC10(region, &needed);
    FUNC11(Ok, status);
    FUNC11(180, needed);
    status = FUNC9(region, (BYTE*)buf, sizeof(buf), &needed);
    FUNC11(Ok, status);
    FUNC11(180, needed);
    FUNC12(buf, 172);
    FUNC14("buf[1] = %08x\n", buf[1]);
    FUNC13(buf + 2);
    FUNC12(buf + 3, 2);
    FUNC12(buf + 4, CombineModeUnion);

    FUNC8(region);
}