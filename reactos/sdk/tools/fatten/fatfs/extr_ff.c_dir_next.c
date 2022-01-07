
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WORD ;
typedef int UINT ;
struct TYPE_9__ {int n_rootdir; int csize; int n_fatent; int wflag; scalar_t__ win; void* winsect; } ;
struct TYPE_8__ {int index; int clust; TYPE_2__* fs; scalar_t__ dir; void* sect; } ;
typedef int FRESULT ;
typedef int DWORD ;
typedef TYPE_1__ DIR ;


 int FR_DENIED ;
 int FR_DISK_ERR ;
 int FR_INT_ERR ;
 int FR_NO_FILE ;
 int FR_OK ;
 int SS (TYPE_2__*) ;
 int SZ_DIRE ;
 void* clust2sect (TYPE_2__*,int) ;
 int create_chain (TYPE_2__*,int) ;
 int get_fat (TYPE_2__*,int) ;
 int mem_set (scalar_t__,int ,int) ;
 scalar_t__ sync_window (TYPE_2__*) ;

__attribute__((used)) static
FRESULT dir_next (
 DIR* dp,
 int stretch
)
{
 DWORD clst;
 UINT i;

 UINT c;



 i = dp->index + 1;
 if (!(i & 0xFFFF) || !dp->sect)
  return FR_NO_FILE;

 if (!(i % (SS(dp->fs) / SZ_DIRE))) {
  dp->sect++;

  if (!dp->clust) {
   if (i >= dp->fs->n_rootdir)
    return FR_NO_FILE;
  }
  else {
   if (((i / (SS(dp->fs) / SZ_DIRE)) & (dp->fs->csize - 1)) == 0) {
    clst = get_fat(dp->fs, dp->clust);
    if (clst <= 1) return FR_INT_ERR;
    if (clst == 0xFFFFFFFF) return FR_DISK_ERR;
    if (clst >= dp->fs->n_fatent) {

     if (!stretch) return FR_NO_FILE;
     clst = create_chain(dp->fs, dp->clust);
     if (clst == 0) return FR_DENIED;
     if (clst == 1) return FR_INT_ERR;
     if (clst == 0xFFFFFFFF) return FR_DISK_ERR;

     if (sync_window(dp->fs)) return FR_DISK_ERR;
     mem_set(dp->fs->win, 0, SS(dp->fs));
     dp->fs->winsect = clust2sect(dp->fs, clst);
     for (c = 0; c < dp->fs->csize; c++) {
      dp->fs->wflag = 1;
      if (sync_window(dp->fs)) return FR_DISK_ERR;
      dp->fs->winsect++;
     }
     dp->fs->winsect -= c;




    }
    dp->clust = clst;
    dp->sect = clust2sect(dp->fs, clst);
   }
  }
 }

 dp->index = (WORD)i;
 dp->dir = dp->fs->win + (i % (SS(dp->fs) / SZ_DIRE)) * SZ_DIRE;

 return FR_OK;
}
