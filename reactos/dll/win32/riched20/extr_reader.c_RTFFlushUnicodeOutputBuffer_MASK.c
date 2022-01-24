#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ dwOutputCount; int /*<<< orphan*/  style; int /*<<< orphan*/  OutputBuffer; int /*<<< orphan*/  editor; } ;
typedef  TYPE_1__ RTF_Info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(RTF_Info *info)
{
        if (info->dwOutputCount)
        {
                FUNC0(info->editor, 0, info->OutputBuffer,
                                        info->dwOutputCount, info->style);
                info->dwOutputCount = 0;
        }
}