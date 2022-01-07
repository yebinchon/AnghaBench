
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ MasterBootRecordMagic; } ;
typedef TYPE_1__* PMASTER_BOOT_RECORD ;
typedef int BOOL ;


 scalar_t__ BOOT_RECORD_SIGNATURE ;
 int FALSE ;
 int TRUE ;

BOOL CheckAgainstMBR(PMASTER_BOOT_RECORD Sector)
{
    if (Sector->MasterBootRecordMagic != BOOT_RECORD_SIGNATURE)
    {
        return FALSE;
    }

    return TRUE;
}
