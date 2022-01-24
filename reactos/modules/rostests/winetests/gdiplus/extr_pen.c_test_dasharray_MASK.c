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
typedef  double REAL ;
typedef  scalar_t__ GpStatus ;
typedef  int /*<<< orphan*/  GpPen ;
typedef  scalar_t__ GpDashStyle ;

/* Variables and functions */
 scalar_t__ DashStyleCustom ; 
 scalar_t__ DashStyleDot ; 
 scalar_t__ DashStyleSolid ; 
 int /*<<< orphan*/  FUNC0 (int,double,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,double*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,double*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ InvalidParameter ; 
 scalar_t__ Ok ; 
 scalar_t__ OutOfMemory ; 
 int /*<<< orphan*/  UnitWorld ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (double,double) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC9(void)
{
    GpPen *pen;
    GpDashStyle style;
    GpStatus status;
    REAL dashes[12];

    FUNC0(0xdeadbeef, 10.0, UnitWorld, &pen);
    dashes[0] = 10.0;
    dashes[1] = 11.0;
    dashes[2] = 12.0;
    dashes[3] = 13.0;
    dashes[4] = 14.0;
    dashes[5] = -100.0;
    dashes[6] = -100.0;
    dashes[7] = dashes[8] = dashes[9] = dashes[10] = dashes[11] = 0.0;

    /* setting the array sets the type to custom */
    FUNC3(pen, &style);
    FUNC6(DashStyleSolid, style);
    status = FUNC4(pen, dashes, 2);
    FUNC6(Ok, status);
    FUNC3(pen, &style);
    FUNC6(DashStyleCustom, style);

    /* Getting the array on a non-custom pen returns invalid parameter (unless
     * you are getting 0 elements).*/
    FUNC5(pen, DashStyleSolid);
    status = FUNC2(pen, &dashes[5], 2);
    FUNC6(InvalidParameter, status);
    status = FUNC2(pen, &dashes[5], 0);
    FUNC6(Ok, status);

    /* What does setting DashStyleCustom do to the array length? */
    FUNC4(pen, dashes, 2);
    FUNC5(pen, DashStyleCustom);
    status = FUNC2(pen, &dashes[5], 2);
    FUNC6(Ok, status);
    FUNC7(10.0, dashes[5]);
    FUNC7(11.0, dashes[6]);

    /* Set the array, then get with different sized buffers. */
    status = FUNC4(pen, dashes, 5);
    FUNC6(Ok, status);
    dashes[5] = -100.0;
    dashes[6] = -100.0;
    status = FUNC2(pen, &dashes[5], 1);
    FUNC6(Ok, status); /* not InsufficientBuffer! */
    FUNC7(10.0, dashes[5]);
    FUNC7(-100.0, dashes[6]);
    dashes[5] = -100.0;
    status = FUNC2(pen, &dashes[5], 6);
    FUNC6(InvalidParameter, status); /* not Ok! */
    FUNC7(-100.0, dashes[5]);
    FUNC7(-100.0, dashes[6]);

    /* Some invalid array values. */
    status = FUNC4(pen, &dashes[7], 5);
    FUNC6(InvalidParameter, status);
    dashes[9] = -1.0;
    status = FUNC4(pen, &dashes[7], 5);
    FUNC6(InvalidParameter, status);

    /* Try to set with count = 0. */
    FUNC5(pen, DashStyleDot);
    if (0)  /* corrupts stack on 64-bit Vista */
    {
    status = FUNC4(pen, dashes, 0);
    FUNC8(status == OutOfMemory || status == InvalidParameter,
       "Expected OutOfMemory or InvalidParameter, got %.8x\n", status);
    }
    status = FUNC4(pen, dashes, -1);
    FUNC8(status == OutOfMemory || status == InvalidParameter,
       "Expected OutOfMemory or InvalidParameter, got %.8x\n", status);
    FUNC3(pen, &style);
    FUNC6(DashStyleDot, style);

    FUNC1(pen);
}