
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
typedef int kmutex_t ;
typedef int blkptr_t ;
struct TYPE_8__ {int b_refcnt; } ;
struct TYPE_9__ {TYPE_1__ b_l1hdr; } ;
typedef TYPE_2__ arc_buf_hdr_t ;


 int ASSERT (int) ;
 int BP_IS_EMBEDDED (int const*) ;
 int HDR_HAS_L1HDR (TYPE_2__*) ;
 int HDR_IO_IN_PROGRESS (TYPE_2__*) ;
 int arc_anon ;
 int arc_change_state (int ,TYPE_2__*,int *) ;
 int arc_hdr_destroy (TYPE_2__*) ;
 TYPE_2__* buf_hash_find (int ,int const*,int **) ;
 int mutex_exit (int *) ;
 int spa_load_guid (int *) ;
 scalar_t__ zfs_refcount_is_zero (int *) ;

void
arc_freed(spa_t *spa, const blkptr_t *bp)
{
 arc_buf_hdr_t *hdr;
 kmutex_t *hash_lock;
 uint64_t guid = spa_load_guid(spa);

 ASSERT(!BP_IS_EMBEDDED(bp));

 hdr = buf_hash_find(guid, bp, &hash_lock);
 if (hdr == ((void*)0))
  return;
 if (!HDR_HAS_L1HDR(hdr) || (!HDR_IO_IN_PROGRESS(hdr) &&
     zfs_refcount_is_zero(&hdr->b_l1hdr.b_refcnt))) {
  arc_change_state(arc_anon, hdr, hash_lock);
  arc_hdr_destroy(hdr);
  mutex_exit(hash_lock);
 } else {
  mutex_exit(hash_lock);
 }

}
