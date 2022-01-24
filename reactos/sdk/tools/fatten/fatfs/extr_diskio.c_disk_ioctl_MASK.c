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
typedef  int DWORD ;
typedef  int /*<<< orphan*/  DRESULT ;
typedef  size_t BYTE ;

/* Variables and functions */
#define  CTRL_SYNC 132 
#define  GET_BLOCK_SIZE 131 
#define  GET_SECTOR_COUNT 130 
#define  GET_SECTOR_SIZE 129 
 int /*<<< orphan*/  RES_ERROR ; 
 int /*<<< orphan*/  RES_OK ; 
 int /*<<< orphan*/  RES_PARERR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
#define  SET_SECTOR_COUNT 128 
 int /*<<< orphan*/ ** driveHandle ; 
 size_t driveHandleCount ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int* sectorCount ; 

DRESULT FUNC5(
    BYTE pdrv,		/* Physical drive nmuber (0..) */
    BYTE cmd,		/* Control code */
    void *buff		/* Buffer to send/receive control data */
    )
{
    if (pdrv < driveHandleCount)
    {
        if (driveHandle[pdrv] != NULL)
        {
            switch (cmd)
            {
            case CTRL_SYNC:
                FUNC0(driveHandle[pdrv]);
                return RES_OK;
            case GET_SECTOR_SIZE:
                *(DWORD*)buff = 512;
                return RES_OK;
            case GET_BLOCK_SIZE:
                *(DWORD*)buff = 512;
                return RES_OK;
            case GET_SECTOR_COUNT:
            {
                if (sectorCount[pdrv] <= 0)
                {
                    if (FUNC1(driveHandle[pdrv], 0, SEEK_END))
                        FUNC4("fseek failed!\n");
                    else
                        sectorCount[pdrv] = FUNC2(driveHandle[pdrv]) / 512;
                }

                *(DWORD*)buff = sectorCount[pdrv];
                return RES_OK;
            }
            case SET_SECTOR_COUNT:
            {
                int count = *(DWORD*)buff;
                long size;

                sectorCount[pdrv] = count;

                FUNC1(driveHandle[pdrv], 0, SEEK_END);
                size = FUNC2(driveHandle[pdrv]) / 512;

                if (size < count)
                {
                    if (FUNC1(driveHandle[pdrv], count * 512 - 1, SEEK_SET))
                        return RES_ERROR;

                    FUNC3(buff, 1, 1, driveHandle[pdrv]);

                    return RES_OK;
                }
                else
                {
                    // SHRINKING NOT IMPLEMENTED
                    return RES_OK;
                }
            }
            }
        }
    }

    return RES_PARERR;
}