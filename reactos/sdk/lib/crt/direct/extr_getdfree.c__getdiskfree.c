
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _diskfree_t {unsigned int avail_clusters; int total_clusters; int bytes_per_sector; int sectors_per_cluster; } ;
typedef int LPDWORD ;


 int GetDiskFreeSpaceA (char*,int ,int ,int ,int ) ;
 char toupper (unsigned int) ;

unsigned int _getdiskfree(unsigned int _drive, struct _diskfree_t* _diskspace)
{
    char RootPathName[10];

    RootPathName[0] = toupper(_drive +'@');
    RootPathName[1] = ':';
    RootPathName[2] = '\\';
    RootPathName[3] = 0;
    if (_diskspace == ((void*)0))
        return 0;
    if (!GetDiskFreeSpaceA(RootPathName,(LPDWORD)&_diskspace->sectors_per_cluster,(LPDWORD)&_diskspace->bytes_per_sector,
            (LPDWORD )&_diskspace->avail_clusters,(LPDWORD )&_diskspace->total_clusters))
        return 0;
    return _diskspace->avail_clusters;
}
