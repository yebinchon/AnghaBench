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
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpPen ;
typedef  int /*<<< orphan*/  GpCustomLineCap ;
typedef  int /*<<< orphan*/  ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    GpPen *pen;
    GpStatus status;
    GpCustomLineCap *custom;

    status = FUNC0((ARGB)0xffff00ff, 10.0f, UnitPixel, &pen);
    FUNC6(Ok, status);

    /* NULL args */
    status = FUNC3(NULL, NULL);
    FUNC6(InvalidParameter, status);
    status = FUNC3(pen, NULL);
    FUNC6(InvalidParameter, status);
    status = FUNC3(NULL, &custom);
    FUNC6(InvalidParameter, status);

    status = FUNC2(NULL, NULL);
    FUNC6(InvalidParameter, status);
    status = FUNC2(pen, NULL);
    FUNC6(InvalidParameter, status);
    status = FUNC2(NULL, &custom);
    FUNC6(InvalidParameter, status);

    /* native crashes on pen == NULL, custom != NULL */
    status = FUNC5(NULL, NULL);
    FUNC6(InvalidParameter, status);
    status = FUNC5(pen, NULL);
    FUNC6(InvalidParameter, status);

    status = FUNC4(NULL, NULL);
    FUNC6(InvalidParameter, status);
    status = FUNC4(pen, NULL);
    FUNC6(InvalidParameter, status);

    /* get without setting previously */
    custom = (GpCustomLineCap*)0xdeadbeef;
    status = FUNC2(pen, &custom);
    FUNC6(Ok, status);
    FUNC7(custom == NULL,"Expect CustomCap == NULL\n");

    custom = (GpCustomLineCap*)0xdeadbeef;
    status = FUNC3(pen, &custom);
    FUNC6(Ok, status);
    FUNC7(custom == NULL,"Expect CustomCap == NULL\n");

    FUNC1(pen);
}