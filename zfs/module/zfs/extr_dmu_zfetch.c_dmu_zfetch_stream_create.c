
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int zs_atime; int zs_lock; void* zs_ipf_blkid; void* zs_pf_blkid; void* zs_blkid; } ;
typedef TYPE_2__ zstream_t ;
struct TYPE_14__ {int zf_stream; TYPE_1__* zf_dnode; int zf_lock; } ;
typedef TYPE_3__ zfetch_t ;
typedef void* uint64_t ;
typedef int uint32_t ;
struct TYPE_12__ {int dn_maxblkid; int dn_datablksz; } ;


 int ASSERT (int ) ;
 int KM_SLEEP ;
 int MAX (int,int ) ;
 int MIN (int ,int) ;
 int MUTEX_DEFAULT ;
 int MUTEX_HELD (int *) ;
 int NANOSEC ;
 int ZFETCHSTAT_BUMP (int ) ;
 int dmu_zfetch_stream_remove (TYPE_3__*,TYPE_2__*) ;
 int gethrtime () ;
 TYPE_2__* kmem_zalloc (int,int ) ;
 TYPE_2__* list_head (int *) ;
 int list_insert_head (int *,TYPE_2__*) ;
 TYPE_2__* list_next (int *,TYPE_2__*) ;
 int mutex_init (int *,int *,int ,int *) ;
 int zfetch_max_distance ;
 int zfetch_max_streams ;
 int zfetch_min_sec_reap ;
 int zfetchstat_max_streams ;

__attribute__((used)) static void
dmu_zfetch_stream_create(zfetch_t *zf, uint64_t blkid)
{
 zstream_t *zs_next;
 int numstreams = 0;

 ASSERT(MUTEX_HELD(&zf->zf_lock));




 for (zstream_t *zs = list_head(&zf->zf_stream);
     zs != ((void*)0); zs = zs_next) {
  zs_next = list_next(&zf->zf_stream, zs);
  if (((gethrtime() - zs->zs_atime) / NANOSEC) >
      zfetch_min_sec_reap)
   dmu_zfetch_stream_remove(zf, zs);
  else
   numstreams++;
 }
 uint32_t max_streams = MAX(1, MIN(zfetch_max_streams,
     zf->zf_dnode->dn_maxblkid * zf->zf_dnode->dn_datablksz /
     zfetch_max_distance));
 if (numstreams >= max_streams) {
  ZFETCHSTAT_BUMP(zfetchstat_max_streams);
  return;
 }

 zstream_t *zs = kmem_zalloc(sizeof (*zs), KM_SLEEP);
 zs->zs_blkid = blkid;
 zs->zs_pf_blkid = blkid;
 zs->zs_ipf_blkid = blkid;
 zs->zs_atime = gethrtime();
 mutex_init(&zs->zs_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));

 list_insert_head(&zf->zf_stream, zs);
}
