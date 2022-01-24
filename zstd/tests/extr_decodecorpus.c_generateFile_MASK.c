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
typedef  scalar_t__ genType_e ;
struct TYPE_4__ {scalar_t__ srcStart; scalar_t__ src; scalar_t__ dataStart; scalar_t__ data; } ;
typedef  TYPE_1__ frame_t ;
typedef  int /*<<< orphan*/  dictInfo ;
typedef  scalar_t__ U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*,int /*<<< orphan*/  const) ; 
 scalar_t__ gt_frame ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,char const* const) ; 

__attribute__((used)) static int FUNC5(U32 seed, const char* const path,
                        const char* const origPath, genType_e genType)
{
    frame_t fr;

    FUNC0("seed: %u\n", (unsigned)seed);

    {   dictInfo const info = FUNC3(0, 0, NULL, 0);
        if (genType == gt_frame) {
            FUNC2(seed, &fr, info);
        } else {
            FUNC1(seed, &fr, info);
        }
    }
    FUNC4(fr.dataStart, (BYTE*)fr.data - (BYTE*)fr.dataStart, path);
    if (origPath) {
        FUNC4(fr.srcStart, (BYTE*)fr.src - (BYTE*)fr.srcStart, origPath);
    }
    return 0;
}