
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int z_id; } ;
typedef TYPE_2__ znode_t ;
struct TYPE_11__ {int * z_log; TYPE_1__* z_os; } ;
typedef TYPE_3__ zfsvfs_t ;
struct writeback_control {int sync_mode; } ;
struct address_space {int host; } ;
typedef enum writeback_sync_modes { ____Placeholder_writeback_sync_modes } writeback_sync_modes ;
struct TYPE_9__ {scalar_t__ os_sync; } ;


 TYPE_2__* ITOZ (int ) ;
 TYPE_3__* ITOZSB (int ) ;
 int WB_SYNC_ALL ;
 int WB_SYNC_NONE ;
 int ZFS_ENTER (TYPE_3__*) ;
 int ZFS_EXIT (TYPE_3__*) ;
 scalar_t__ ZFS_SYNC_ALWAYS ;
 int ZFS_VERIFY_ZP (TYPE_2__*) ;
 int write_cache_pages (struct address_space*,struct writeback_control*,int ,struct address_space*) ;
 int zil_commit (int *,int ) ;
 int zpl_putpage ;

__attribute__((used)) static int
zpl_writepages(struct address_space *mapping, struct writeback_control *wbc)
{
 znode_t *zp = ITOZ(mapping->host);
 zfsvfs_t *zfsvfs = ITOZSB(mapping->host);
 enum writeback_sync_modes sync_mode;
 int result;

 ZFS_ENTER(zfsvfs);
 if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
  wbc->sync_mode = WB_SYNC_ALL;
 ZFS_EXIT(zfsvfs);
 sync_mode = wbc->sync_mode;
 wbc->sync_mode = WB_SYNC_NONE;
 result = write_cache_pages(mapping, wbc, zpl_putpage, mapping);
 if (sync_mode != wbc->sync_mode) {
  ZFS_ENTER(zfsvfs);
  ZFS_VERIFY_ZP(zp);
  if (zfsvfs->z_log != ((void*)0))
   zil_commit(zfsvfs->z_log, zp->z_id);
  ZFS_EXIT(zfsvfs);
  wbc->sync_mode = sync_mode;
  result = write_cache_pages(mapping, wbc, zpl_putpage, mapping);
 }
 return (result);
}
