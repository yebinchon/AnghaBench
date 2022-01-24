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
typedef  char WCHAR ;
struct TYPE_4__ {double member_0; double member_1; double member_2; double member_3; double Width; double Height; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  double REAL ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ GpUnit ;
typedef  scalar_t__ GpStatus ;
typedef  TYPE_1__ GpRectF ;
typedef  int /*<<< orphan*/  GpMetafile ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EmfTypeEmfPlusOnly ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,double*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,double*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  MetafileFrameUnitInch ; 
 scalar_t__ Ok ; 
 scalar_t__ UnitPixel ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (double,double,double) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,double) ; 

__attribute__((used)) static void FUNC14(void)
{
    GpStatus stat;
    GpMetafile *metafile;
    GpGraphics *graphics;
    HDC hdc;
    static const GpRectF frame = {0.0, 0.0, 5.0, 5.0};
    static const WCHAR description[] = {'w','i','n','e','t','e','s','t',0};
    GpUnit unit;
    REAL dpix, dpiy;
    GpRectF bounds;

    hdc = FUNC0(0);

    stat = FUNC8(hdc, EmfTypeEmfPlusOnly, &frame, MetafileFrameUnitInch, description, &metafile);
    FUNC10(Ok, stat);

    FUNC1(hdc);

    if (stat != Ok)
        return;

    stat = FUNC4((GpImage*)metafile, &bounds, &unit);
    FUNC10(Ok, stat);
    FUNC10(UnitPixel, unit);
    FUNC11(0.0, bounds.X);
    FUNC11(0.0, bounds.Y);
    FUNC13(bounds.Width == 1.0 || FUNC9(bounds.Width == 0.0) /* xp sp1 */,
        "expected 1.0, got %f\n", bounds.Width);
    FUNC13(bounds.Height == 1.0 || FUNC9(bounds.Height == 0.0) /* xp sp1 */,
        "expected 1.0, got %f\n", bounds.Height);

    stat = FUNC5((GpImage*)metafile, &graphics);
    FUNC10(Ok, stat);

    stat = FUNC4((GpImage*)metafile, &bounds, &unit);
    FUNC10(Ok, stat);
    FUNC10(UnitPixel, unit);
    FUNC11(0.0, bounds.X);
    FUNC11(0.0, bounds.Y);
    FUNC13(bounds.Width == 1.0 || FUNC9(bounds.Width == 0.0) /* xp sp1 */,
        "expected 1.0, got %f\n", bounds.Width);
    FUNC13(bounds.Height == 1.0 || FUNC9(bounds.Height == 0.0) /* xp sp1 */,
        "expected 1.0, got %f\n", bounds.Height);

    stat = FUNC2(graphics);
    FUNC10(Ok, stat);

    stat = FUNC6((GpImage*)metafile, &dpix);
    FUNC10(Ok, stat);

    stat = FUNC7((GpImage*)metafile, &dpiy);
    FUNC10(Ok, stat);

    stat = FUNC4((GpImage*)metafile, &bounds, &unit);
    FUNC10(Ok, stat);
    FUNC10(UnitPixel, unit);
    FUNC11(0.0, bounds.X);
    FUNC11(0.0, bounds.Y);
    FUNC12(5.0 * dpix, bounds.Width, 1.0);
    FUNC12(5.0 * dpiy, bounds.Height, 1.0);

    stat = FUNC3((GpImage*)metafile);
    FUNC10(Ok, stat);
}