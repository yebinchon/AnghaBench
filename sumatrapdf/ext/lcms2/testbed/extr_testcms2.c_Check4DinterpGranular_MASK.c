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
typedef  int cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsStage ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int cmsInt32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  Sampler4D ; 
 int /*<<< orphan*/  cmsAT_BEGIN ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
cmsInt32Number FUNC7(void)
{
    cmsPipeline* lut;
    cmsStage* mpe;
    cmsUInt32Number Dimensions[] = { 9, 8, 7, 6 };

    lut = FUNC2(FUNC1(), 4, 3);
    mpe = FUNC5(FUNC1(), Dimensions, 4, 3, NULL);
    FUNC6(FUNC1(), mpe, Sampler4D, NULL, 0);
    FUNC4(FUNC1(), lut, cmsAT_BEGIN, mpe);

    // Check accuracy

    if (!FUNC0(lut, 0, 0, 0, 0)) return 0;
    if (!FUNC0(lut, 0xffff, 0xffff, 0xffff, 0xffff)) return 0;

    if (!FUNC0(lut, 0x8080, 0x8080, 0x8080, 0x8080)) return 0;
    if (!FUNC0(lut, 0x0000, 0xFE00, 0x80FF, 0x8888)) return 0;
    if (!FUNC0(lut, 0x1111, 0x2222, 0x3333, 0x4444)) return 0;
    if (!FUNC0(lut, 0x0000, 0x0012, 0x0013, 0x0014)) return 0;
    if (!FUNC0(lut, 0x3141, 0x1415, 0x1592, 0x9261)) return 0;
    if (!FUNC0(lut, 0xFF00, 0xFF01, 0xFF12, 0xFF13)) return 0;

    FUNC3(FUNC1(), lut);

    return 1;
}