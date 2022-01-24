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
typedef  int /*<<< orphan*/  DSTATUS ;
typedef  scalar_t__ BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  STA_NOINIT ; 
 int /*<<< orphan*/ ** driveHandle ; 
 scalar_t__ driveHandleCount ; 
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 

DSTATUS FUNC1(BYTE pdrv, const char* imageFileName)
{
    if (pdrv < driveHandleCount)
    {
        if (driveHandle[0] != NULL)
            return 0;

        driveHandle[0] = FUNC0(imageFileName, "r+b");
        if (!driveHandle[0])
        {
            driveHandle[0] = FUNC0(imageFileName, "w+b");
        }

        if (driveHandle[0] != NULL)
            return 0;
    }
    return STA_NOINIT;
}