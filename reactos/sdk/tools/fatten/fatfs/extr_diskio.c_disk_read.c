
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int DWORD ;
typedef int DRESULT ;
typedef size_t BYTE ;


 int RES_ERROR ;
 int RES_OK ;
 int RES_PARERR ;
 int SEEK_SET ;
 int ** driveHandle ;
 size_t driveHandleCount ;
 int fread (size_t*,int,int,int *) ;
 scalar_t__ fseek (int *,int,int ) ;

DRESULT disk_read(
    BYTE pdrv,
    BYTE *buff,
    DWORD sector,
    UINT count
    )
{
    DWORD result;

    if (pdrv < driveHandleCount)
    {
        if (driveHandle[pdrv] != ((void*)0))
        {
            if (fseek(driveHandle[pdrv], sector * 512, SEEK_SET))
                return RES_ERROR;

            result = fread(buff, 512, count, driveHandle[pdrv]);

            if (result != count)
                return RES_ERROR;

            return RES_OK;
        }
    }

    return RES_PARERR;
}
