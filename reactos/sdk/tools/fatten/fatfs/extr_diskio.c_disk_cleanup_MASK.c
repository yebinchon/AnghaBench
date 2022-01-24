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
typedef  int /*<<< orphan*/  VOID ;
typedef  size_t BYTE ;

/* Variables and functions */
 int /*<<< orphan*/ ** driveHandle ; 
 size_t driveHandleCount ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

VOID FUNC1(
    BYTE pdrv		/* Physical drive nmuber (0..) */
    )
{
    if (pdrv < driveHandleCount)
    {
        if (driveHandle[pdrv] != NULL)
        {
            FUNC0(driveHandle[pdrv]);
            driveHandle[pdrv] = NULL;
        }
    }
}