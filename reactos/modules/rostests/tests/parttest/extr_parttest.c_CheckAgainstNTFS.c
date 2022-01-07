
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {scalar_t__* Unused0; scalar_t__* Unused3; int BytesPerSector; int SectorsPerCluster; int OEMID; } ;
typedef TYPE_1__* PNTFSBootSector ;
typedef int BOOL ;


 int FALSE ;
 int RtlCompareMemory (int ,char*,int) ;
 int TRUE ;

BOOL CheckAgainstNTFS(PNTFSBootSector Sector)
{
    ULONG k;
    ULONG ClusterSize;


    if (RtlCompareMemory(Sector->OEMID, "NTFS    ", 8) != 8)
    {
        return FALSE;
    }


    for (k = 0; k < 7; k++)
    {
        if (Sector->Unused0[k] != 0)
        {
            return FALSE;
        }
    }


    for (k = 0; k < 4; k++)
    {
        if (Sector->Unused3[k] != 0)
        {
            return FALSE;
        }
    }


    ClusterSize = Sector->BytesPerSector * Sector->SectorsPerCluster;
    if (ClusterSize != 512 && ClusterSize != 1024 &&
        ClusterSize != 2048 && ClusterSize != 4096 &&
        ClusterSize != 8192 && ClusterSize != 16384 &&
        ClusterSize != 32768 && ClusterSize != 65536)
    {
        return FALSE;
    }

    return TRUE;
}
