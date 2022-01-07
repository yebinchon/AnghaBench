
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_iflags; int zc_history_len; scalar_t__ zc_history; int zc_history_offset; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int uint64_t ;
typedef int spa_t ;


 int EINVAL ;
 int ENOTSUP ;
 int FTAG ;
 int KM_SLEEP ;
 int SET_ERROR (int ) ;
 scalar_t__ SPA_VERSION_ZPOOL_HISTORY ;
 int ddi_copyout (char*,void*,int ,int ) ;
 int spa_close (int *,int ) ;
 int spa_history_get (int *,int *,int *,char*) ;
 int spa_open (int ,int **,int ) ;
 scalar_t__ spa_version (int *) ;
 char* vmem_alloc (int ,int ) ;
 int vmem_free (char*,int ) ;

__attribute__((used)) static int
zfs_ioc_pool_get_history(zfs_cmd_t *zc)
{
 spa_t *spa;
 char *hist_buf;
 uint64_t size;
 int error;

 if ((size = zc->zc_history_len) == 0)
  return (SET_ERROR(EINVAL));

 if ((error = spa_open(zc->zc_name, &spa, FTAG)) != 0)
  return (error);

 if (spa_version(spa) < SPA_VERSION_ZPOOL_HISTORY) {
  spa_close(spa, FTAG);
  return (SET_ERROR(ENOTSUP));
 }

 hist_buf = vmem_alloc(size, KM_SLEEP);
 if ((error = spa_history_get(spa, &zc->zc_history_offset,
     &zc->zc_history_len, hist_buf)) == 0) {
  error = ddi_copyout(hist_buf,
      (void *)(uintptr_t)zc->zc_history,
      zc->zc_history_len, zc->zc_iflags);
 }

 spa_close(spa, FTAG);
 vmem_free(hist_buf, size);
 return (error);
}
