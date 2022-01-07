
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSTATUS ;
typedef scalar_t__ BYTE ;


 int STA_NOINIT ;

DSTATUS disk_initialize(
    BYTE pdrv
    )
{
    if (pdrv == 0)
    {
        return 0;
    }
    return STA_NOINIT;
}
