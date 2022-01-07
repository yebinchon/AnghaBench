
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ WORD ;
typedef int UINT ;
struct TYPE_7__ {int n_fatent; scalar_t__ fs_type; int dirbase; int n_rootdir; int csize; scalar_t__ win; } ;
struct TYPE_6__ {int sclust; int clust; int sect; TYPE_2__* fs; scalar_t__ dir; scalar_t__ index; } ;
typedef int FRESULT ;
typedef int DWORD ;
typedef TYPE_1__ DIR ;


 int FR_DISK_ERR ;
 int FR_INT_ERR ;
 int FR_OK ;
 scalar_t__ FS_FAT32 ;
 int SS (TYPE_2__*) ;
 int SZ_DIRE ;
 int clust2sect (TYPE_2__*,int) ;
 int get_fat (TYPE_2__*,int) ;

__attribute__((used)) static
FRESULT dir_sdi (
 DIR* dp,
 UINT idx
)
{
 DWORD clst, sect;
 UINT ic;


 dp->index = (WORD)idx;
 clst = dp->sclust;
 if (clst == 1 || clst >= dp->fs->n_fatent)
  return FR_INT_ERR;
 if (!clst && dp->fs->fs_type == FS_FAT32)
  clst = dp->fs->dirbase;

 if (clst == 0) {
  if (idx >= dp->fs->n_rootdir)
   return FR_INT_ERR;
  sect = dp->fs->dirbase;
 }
 else {
  ic = SS(dp->fs) / SZ_DIRE * dp->fs->csize;
  while (idx >= ic) {
   clst = get_fat(dp->fs, clst);
   if (clst == 0xFFFFFFFF) return FR_DISK_ERR;
   if (clst < 2 || clst >= dp->fs->n_fatent)
    return FR_INT_ERR;
   idx -= ic;
  }
  sect = clust2sect(dp->fs, clst);
 }
 dp->clust = clst;
 if (!sect) return FR_INT_ERR;
 dp->sect = sect + idx / (SS(dp->fs) / SZ_DIRE);
 dp->dir = dp->fs->win + (idx % (SS(dp->fs) / SZ_DIRE)) * SZ_DIRE;

 return FR_OK;
}
