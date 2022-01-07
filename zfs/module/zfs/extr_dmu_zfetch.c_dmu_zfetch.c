
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ zs_blkid; scalar_t__ zs_pf_blkid; scalar_t__ zs_ipf_blkid; int zs_lock; int zs_atime; } ;
typedef TYPE_2__ zstream_t ;
struct TYPE_12__ {TYPE_9__* zf_dnode; int zf_lock; int zf_stream; } ;
typedef TYPE_3__ zfetch_t ;
typedef scalar_t__ uint64_t ;
typedef int spa_t ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_13__ {int dn_datablkshift; int dn_indblkshift; int dn_struct_rwlock; TYPE_1__* dn_objset; } ;
struct TYPE_10__ {int * os_spa; } ;


 int ARC_FLAG_PREDICTIVE_PREFETCH ;
 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 int MIN (scalar_t__,scalar_t__) ;
 int P2ROUNDUP (scalar_t__,int) ;
 int RW_READER ;
 int SPA_BLKPTRSHIFT ;
 int ZFETCHSTAT_BUMP (int ) ;
 int ZIO_PRIORITY_ASYNC_READ ;
 int dbuf_prefetch (TYPE_9__*,int,scalar_t__,int ,int ) ;
 int dmu_zfetch_stream_create (TYPE_3__*,scalar_t__) ;
 int gethrtime () ;
 TYPE_2__* list_head (int *) ;
 TYPE_2__* list_next (int *,TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int spa_indirect_vdevs_loaded (int *) ;
 int zfetch_max_distance ;
 int zfetch_max_idistance ;
 int zfetchstat_hits ;
 int zfetchstat_misses ;
 scalar_t__ zfs_prefetch_disable ;

void
dmu_zfetch(zfetch_t *zf, uint64_t blkid, uint64_t nblks, boolean_t fetch_data,
    boolean_t have_lock)
{
 zstream_t *zs;
 int64_t pf_start, ipf_start, ipf_istart, ipf_iend;
 int64_t pf_ahead_blks, max_blks;
 int epbs, max_dist_blks, pf_nblks, ipf_nblks;
 uint64_t end_of_access_blkid;
 end_of_access_blkid = blkid + nblks;
 spa_t *spa = zf->zf_dnode->dn_objset->os_spa;

 if (zfs_prefetch_disable)
  return;







 if (!spa_indirect_vdevs_loaded(spa))
  return;





 if (blkid == 0)
  return;

 if (!have_lock)
  rw_enter(&zf->zf_dnode->dn_struct_rwlock, RW_READER);
 mutex_enter(&zf->zf_lock);






 for (zs = list_head(&zf->zf_stream); zs != ((void*)0);
     zs = list_next(&zf->zf_stream, zs)) {
  if (blkid == zs->zs_blkid || blkid + 1 == zs->zs_blkid) {
   mutex_enter(&zs->zs_lock);




   if (blkid == zs->zs_blkid) {
    break;
   } else if (blkid + 1 == zs->zs_blkid) {
    blkid++;
    nblks--;
    if (nblks == 0) {

     mutex_exit(&zs->zs_lock);
     mutex_exit(&zf->zf_lock);
     if (!have_lock) {
      rw_exit(&zf->zf_dnode->
          dn_struct_rwlock);
     }
     return;
    }
    break;
   }
   mutex_exit(&zs->zs_lock);
  }
 }

 if (zs == ((void*)0)) {




  ZFETCHSTAT_BUMP(zfetchstat_misses);

  dmu_zfetch_stream_create(zf, end_of_access_blkid);
  mutex_exit(&zf->zf_lock);
  if (!have_lock)
   rw_exit(&zf->zf_dnode->dn_struct_rwlock);
  return;
 }
 pf_start = MAX(zs->zs_pf_blkid, end_of_access_blkid);





 if (fetch_data) {
  max_dist_blks =
      zfetch_max_distance >> zf->zf_dnode->dn_datablkshift;






  pf_ahead_blks = zs->zs_pf_blkid - blkid + nblks;
  max_blks = max_dist_blks - (pf_start - end_of_access_blkid);
  pf_nblks = MIN(pf_ahead_blks, max_blks);
 } else {
  pf_nblks = 0;
 }

 zs->zs_pf_blkid = pf_start + pf_nblks;






 ipf_start = MAX(zs->zs_ipf_blkid, zs->zs_pf_blkid);
 max_dist_blks = zfetch_max_idistance >> zf->zf_dnode->dn_datablkshift;







 pf_ahead_blks = zs->zs_ipf_blkid - blkid + nblks + pf_nblks;
 max_blks = max_dist_blks - (ipf_start - end_of_access_blkid);
 ipf_nblks = MIN(pf_ahead_blks, max_blks);
 zs->zs_ipf_blkid = ipf_start + ipf_nblks;

 epbs = zf->zf_dnode->dn_indblkshift - SPA_BLKPTRSHIFT;
 ipf_istart = P2ROUNDUP(ipf_start, 1 << epbs) >> epbs;
 ipf_iend = P2ROUNDUP(zs->zs_ipf_blkid, 1 << epbs) >> epbs;

 zs->zs_atime = gethrtime();
 zs->zs_blkid = end_of_access_blkid;
 mutex_exit(&zs->zs_lock);
 mutex_exit(&zf->zf_lock);







 for (int i = 0; i < pf_nblks; i++) {
  dbuf_prefetch(zf->zf_dnode, 0, pf_start + i,
      ZIO_PRIORITY_ASYNC_READ, ARC_FLAG_PREDICTIVE_PREFETCH);
 }
 for (int64_t iblk = ipf_istart; iblk < ipf_iend; iblk++) {
  dbuf_prefetch(zf->zf_dnode, 1, iblk,
      ZIO_PRIORITY_ASYNC_READ, ARC_FLAG_PREDICTIVE_PREFETCH);
 }
 if (!have_lock)
  rw_exit(&zf->zf_dnode->dn_struct_rwlock);
 ZFETCHSTAT_BUMP(zfetchstat_hits);
}
