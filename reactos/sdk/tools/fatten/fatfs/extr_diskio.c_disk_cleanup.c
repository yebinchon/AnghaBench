
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef size_t BYTE ;


 int ** driveHandle ;
 size_t driveHandleCount ;
 int fclose (int *) ;

VOID disk_cleanup(
    BYTE pdrv
    )
{
    if (pdrv < driveHandleCount)
    {
        if (driveHandle[pdrv] != ((void*)0))
        {
            fclose(driveHandle[pdrv]);
            driveHandle[pdrv] = ((void*)0);
        }
    }
}
