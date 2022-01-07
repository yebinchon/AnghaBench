
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSTATUS ;
typedef scalar_t__ BYTE ;


 int STA_NOINIT ;
 int ** driveHandle ;
 scalar_t__ driveHandleCount ;
 int * fopen (char const*,char*) ;

DSTATUS disk_openimage(BYTE pdrv, const char* imageFileName)
{
    if (pdrv < driveHandleCount)
    {
        if (driveHandle[0] != ((void*)0))
            return 0;

        driveHandle[0] = fopen(imageFileName, "r+b");
        if (!driveHandle[0])
        {
            driveHandle[0] = fopen(imageFileName, "w+b");
        }

        if (driveHandle[0] != ((void*)0))
            return 0;
    }
    return STA_NOINIT;
}
