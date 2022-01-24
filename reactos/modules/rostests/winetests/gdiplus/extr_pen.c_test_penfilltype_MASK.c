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
struct TYPE_4__ {double X; double Y; } ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpSolidFill ;
typedef  TYPE_1__ GpPointF ;
typedef  int /*<<< orphan*/  GpPenType ;
typedef  int /*<<< orphan*/  GpPen ;
typedef  int /*<<< orphan*/  GpLineGradient ;
typedef  int /*<<< orphan*/  GpBrush ;
typedef  int /*<<< orphan*/  ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,float,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  PenTypeLinearGradient ; 
 int /*<<< orphan*/  PenTypeSolidColor ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  WrapModeTile ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
    GpPen *pen;
    GpSolidFill *solid;
    GpLineGradient *line;
    GpPointF a, b;
    GpStatus status;
    GpPenType type;

    /* NULL */
    status = FUNC6(NULL, NULL);
    FUNC7(InvalidParameter, status);

    status = FUNC1((ARGB)0xffff00ff, 10.0f, UnitPixel, &pen);
    FUNC7(Ok, status);
    status = FUNC6(pen, NULL);
    FUNC7(InvalidParameter, status);

    /* created with GdipCreatePen1() */
    status = FUNC6(pen, &type);
    FUNC7(Ok, status);
    FUNC7(PenTypeSolidColor, type);
    FUNC5(pen);

    /* based on SolidBrush */
    status = FUNC3((ARGB)0xffff00ff, &solid);
    FUNC7(Ok, status);
    status = FUNC2((GpBrush*)solid, 10.0f, UnitPixel, &pen);
    FUNC7(Ok, status);
    status = FUNC6(pen, &type);
    FUNC7(Ok, status);
    FUNC7(PenTypeSolidColor, type);
    FUNC5(pen);
    FUNC4((GpBrush*)solid);

    /* based on LinearGradientBrush */
    a.X = a.Y = 0.0;
    b.X = b.Y = 10.0;
    status = FUNC0(&a, &b, (ARGB)0xffff00ff, (ARGB)0xffff0000,
                                 WrapModeTile, &line);
    FUNC7(Ok, status);
    status = FUNC2((GpBrush*)line, 10.0f, UnitPixel, &pen);
    FUNC7(Ok, status);
    status = FUNC6(pen, &type);
    FUNC7(Ok, status);
    FUNC7(PenTypeLinearGradient, type);
    FUNC5(pen);
    FUNC4((GpBrush*)line);
}