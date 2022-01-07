
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Signature1; int BytesPerSector; int FATCount; int Media; int SectorsPerCluster; } ;
typedef TYPE_1__* PFATBootSector ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

BOOL CheckAgainstFAT(PFATBootSector Sector)
{
    if (Sector->Signature1 != 0xaa55)
    {
        return FALSE;
    }

    if (Sector->BytesPerSector != 512 &&
        Sector->BytesPerSector != 1024 &&
        Sector->BytesPerSector != 2048 &&
        Sector->BytesPerSector != 4096)
    {
        return FALSE;
    }

    if (Sector->FATCount != 1 &&
        Sector->FATCount != 2)
    {
        return FALSE;
    }

    if (Sector->Media != 0xf0 &&
        Sector->Media != 0xf8 &&
        Sector->Media != 0xf9 &&
        Sector->Media != 0xfa &&
        Sector->Media != 0xfb &&
        Sector->Media != 0xfc &&
        Sector->Media != 0xfd &&
        Sector->Media != 0xfe &&
        Sector->Media != 0xff)
    {
        return FALSE;
    }

    if (Sector->SectorsPerCluster != 1 &&
        Sector->SectorsPerCluster != 2 &&
        Sector->SectorsPerCluster != 4 &&
        Sector->SectorsPerCluster != 8 &&
        Sector->SectorsPerCluster != 16 &&
        Sector->SectorsPerCluster != 32 &&
        Sector->SectorsPerCluster != 64 &&
        Sector->SectorsPerCluster != 128)
    {
        return FALSE;
    }

    if (Sector->BytesPerSector * Sector->SectorsPerCluster > 32 * 1024)
    {
        return FALSE;
    }

    return TRUE;
}
