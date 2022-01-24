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
typedef  scalar_t__ GpStatus ;
typedef  int /*<<< orphan*/  GpSolidFill ;
typedef  int /*<<< orphan*/  GpPen ;
typedef  scalar_t__ GpBrushType ;
typedef  int /*<<< orphan*/  GpBrush ;
typedef  scalar_t__ ARGB ;

/* Variables and functions */
 int BrushTypeSolidColor ; 
 int /*<<< orphan*/  FUNC0 (int,double,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int InvalidParameter ; 
 int Ok ; 
 int /*<<< orphan*/  UnitWorld ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    GpStatus status;
    GpPen *pen;
    GpBrush *brush, *brush2;
    GpBrushType type;
    ARGB color = 0;

    /* default solid */
    FUNC0(0xdeadbeef, 4.5, UnitWorld, &pen);
    status = FUNC5(pen, &brush);
    FUNC10(Ok, status);
    FUNC4(brush, &type);
    FUNC10(BrushTypeSolidColor, type);
    FUNC6(pen, &color);
    FUNC10(0xdeadbeef, color);
    FUNC2(brush);

    /* color controlled by brush */
    FUNC1(0xabaddeed, (GpSolidFill**)&brush);
    status = FUNC8(pen, brush);
    FUNC10(Ok, status);
    FUNC6(pen, &color);
    FUNC10(0xabaddeed, color);
    FUNC2(brush);
    color = 0;

    /* get returns a clone, not a reference */
    FUNC5(pen, &brush);
    FUNC9((GpSolidFill*)brush, 0xbeadfeed);
    FUNC5(pen, &brush2);
    FUNC11(brush != brush2, "Expected to get a clone, not a copy of the reference\n");
    FUNC7((GpSolidFill*)brush2, &color);
    FUNC10(0xabaddeed, color);
    FUNC2(brush);
    FUNC2(brush2);

    /* brush cannot be NULL */
    status = FUNC8(pen, NULL);
    FUNC10(InvalidParameter, status);

    FUNC3(pen);
}