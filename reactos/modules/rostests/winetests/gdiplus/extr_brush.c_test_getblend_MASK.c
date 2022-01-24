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
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpPathGradient ;
typedef  int /*<<< orphan*/  GpBrush ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double*,double*,int) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  WrapModeClamp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (double,double) ; 
 int /*<<< orphan*/  getblend_ptf ; 

__attribute__((used)) static void FUNC5(void)
{
    GpStatus status;
    GpPathGradient *brush;
    REAL blends[4];
    REAL pos[4];

    status = FUNC0(getblend_ptf, 2, WrapModeClamp, &brush);
    FUNC3(Ok, status);

    /* check some invalid parameters combinations */
    status = FUNC2(NULL, NULL,  NULL, -1);
    FUNC3(InvalidParameter, status);
    status = FUNC2(brush,NULL,  NULL, -1);
    FUNC3(InvalidParameter, status);
    status = FUNC2(NULL, blends,NULL, -1);
    FUNC3(InvalidParameter, status);
    status = FUNC2(NULL, NULL,  pos,  -1);
    FUNC3(InvalidParameter, status);
    status = FUNC2(NULL, NULL,  NULL,  1);
    FUNC3(InvalidParameter, status);

    blends[0] = (REAL)0xdeadbeef;
    pos[0]    = (REAL)0xdeadbeef;
    status = FUNC2(brush, blends, pos, 1);
    FUNC3(Ok, status);
    FUNC4(1.0, blends[0]);
    FUNC4((REAL)0xdeadbeef, pos[0]);

    FUNC1((GpBrush*) brush);
}