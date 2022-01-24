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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  Sampler8D ; 
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
    cmsUInt32Number Dimensions[] = { 4, 3, 3, 2, 2, 2, 2, 2 };

    lut = FUNC2(FUNC1(), 8, 3);
    mpe = FUNC5(FUNC1(), Dimensions, 8, 3, NULL);
    FUNC6(FUNC1(), mpe, Sampler8D, NULL, 0);
    FUNC4(FUNC1(), lut, cmsAT_BEGIN, mpe);

    // Check accuracy

    if (!FUNC0(lut, 0, 0, 0, 0, 0, 0, 0, 0)) return 0;
    if (!FUNC0(lut, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff)) return 0;

    if (!FUNC0(lut, 0x8080, 0x8080, 0x8080, 0x8080, 0x1234, 0x1122, 0x0056, 0x0011)) return 0;
    if (!FUNC0(lut, 0x0000, 0xFE00, 0x80FF, 0x8888, 0x8078, 0x2233, 0x0088, 0x2020)) return 0;
    if (!FUNC0(lut, 0x1111, 0x2222, 0x3333, 0x4444, 0x1455, 0x3344, 0x1987, 0x4532)) return 0;
    if (!FUNC0(lut, 0x0000, 0x0012, 0x0013, 0x0014, 0x2333, 0x4455, 0x9988, 0x1200)) return 0;
    if (!FUNC0(lut, 0x3141, 0x1415, 0x1592, 0x9261, 0x4567, 0x5566, 0xfe56, 0x6666)) return 0;
    if (!FUNC0(lut, 0xFF00, 0xFF01, 0xFF12, 0xFF13, 0xF344, 0x6677, 0xbabe, 0xface)) return 0;

    FUNC3(FUNC1(), lut);

    return 1;
}