
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int DRESULT ;
typedef size_t BYTE ;






 int RES_ERROR ;
 int RES_OK ;
 int RES_PARERR ;
 int SEEK_END ;
 int SEEK_SET ;

 int ** driveHandle ;
 size_t driveHandleCount ;
 int fflush (int *) ;
 int fseek (int *,int,int ) ;
 int ftell (int *) ;
 int fwrite (void*,int,int,int *) ;
 int printf (char*) ;
 int* sectorCount ;

DRESULT disk_ioctl(
    BYTE pdrv,
    BYTE cmd,
    void *buff
    )
{
    if (pdrv < driveHandleCount)
    {
        if (driveHandle[pdrv] != ((void*)0))
        {
            switch (cmd)
            {
            case 132:
                fflush(driveHandle[pdrv]);
                return RES_OK;
            case 129:
                *(DWORD*)buff = 512;
                return RES_OK;
            case 131:
                *(DWORD*)buff = 512;
                return RES_OK;
            case 130:
            {
                if (sectorCount[pdrv] <= 0)
                {
                    if (fseek(driveHandle[pdrv], 0, SEEK_END))
                        printf("fseek failed!\n");
                    else
                        sectorCount[pdrv] = ftell(driveHandle[pdrv]) / 512;
                }

                *(DWORD*)buff = sectorCount[pdrv];
                return RES_OK;
            }
            case 128:
            {
                int count = *(DWORD*)buff;
                long size;

                sectorCount[pdrv] = count;

                fseek(driveHandle[pdrv], 0, SEEK_END);
                size = ftell(driveHandle[pdrv]) / 512;

                if (size < count)
                {
                    if (fseek(driveHandle[pdrv], count * 512 - 1, SEEK_SET))
                        return RES_ERROR;

                    fwrite(buff, 1, 1, driveHandle[pdrv]);

                    return RES_OK;
                }
                else
                {

                    return RES_OK;
                }
            }
            }
        }
    }

    return RES_PARERR;
}
