
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libfat_filesystem {int rootcluster; int rootdir; int endcluster; int data; int clustshift; } ;
typedef int libfat_sector_t ;
typedef int int32_t ;



libfat_sector_t libfat_clustertosector(const struct libfat_filesystem *fs,
           int32_t cluster)
{
    if (cluster == 0)
 cluster = fs->rootcluster;

    if (cluster == 0)
 return fs->rootdir;
    else if (cluster < 2 || cluster >= fs->endcluster)
 return -1;
    else
 return fs->data + ((libfat_sector_t) (cluster - 2) << fs->clustshift);
}
