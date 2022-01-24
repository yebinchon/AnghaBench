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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int dwCPOutputCount; int /*<<< orphan*/  cpOutputBuffer; int /*<<< orphan*/  codePage; } ;
typedef  TYPE_1__ RTF_Info ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(RTF_Info *info)
{
        int bufferMax = info->dwCPOutputCount * 2 * sizeof(WCHAR);
        WCHAR *buffer = FUNC2(bufferMax);
        int length;

        length = FUNC0(info->codePage, 0, info->cpOutputBuffer,
                                     info->dwCPOutputCount, buffer, bufferMax/sizeof(WCHAR));
        info->dwCPOutputCount = 0;

        FUNC1(info, buffer, length);
        FUNC3(buffer);
}