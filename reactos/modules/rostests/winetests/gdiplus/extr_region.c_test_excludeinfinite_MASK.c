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
typedef  int UINT ;
struct TYPE_6__ {int /*<<< orphan*/  Height; int /*<<< orphan*/  Width; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
struct TYPE_5__ {double member_0; double member_1; double member_2; double member_3; } ;
typedef  TYPE_1__ RectF ;
typedef  int /*<<< orphan*/  INT ;
typedef  int GpStatus ;
typedef  int /*<<< orphan*/  GpRegion ;
typedef  TYPE_2__ GpRectF ;
typedef  int /*<<< orphan*/  GpMatrix ;

/* Variables and functions */
 int /*<<< orphan*/  CombineModeExclude ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int Ok ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (double,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void)
{
    GpStatus status;
    GpRegion *region;
    UINT count=0xdeadbeef;
    GpRectF scans[4];
    GpMatrix *identity;
    static const RectF rect_exclude = {0.0, 0.0, 1.0, 1.0};

    status = FUNC1(&identity);
    FUNC7(Ok, status);

    status = FUNC2(&region);
    FUNC7(Ok, status);

    status = FUNC0(region, &rect_exclude, CombineModeExclude);
    FUNC7(Ok, status);

    status = FUNC6(region, &count, identity);
    FUNC7(Ok, status);
    FUNC7(4, count);

    count = 4;
    status = FUNC5(region, scans, (INT*)&count, identity);
    FUNC7(Ok, status);

    FUNC8(-4194304.0, scans[0].X);
    FUNC8(-4194304.0, scans[0].Y);
    FUNC8(8388608.0, scans[0].Width);
    FUNC8(4194304.0, scans[0].Height);

    FUNC8(-4194304.0, scans[1].X);
    FUNC8(0.0, scans[1].Y);
    FUNC8(4194304.0, scans[1].Width);
    FUNC8(1.0, scans[1].Height);

    FUNC8(1.0, scans[2].X);
    FUNC8(0.0, scans[2].Y);
    FUNC8(4194303.0, scans[2].Width);
    FUNC8(1.0, scans[2].Height);

    FUNC8(-4194304.0, scans[3].X);
    FUNC8(1.0, scans[3].Y);
    FUNC8(8388608.0, scans[3].Width);
    FUNC8(4194303.0, scans[3].Height);

    FUNC4(region);
    FUNC3(identity);
}