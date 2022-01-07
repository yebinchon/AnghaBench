
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
struct TYPE_9__ {int arcs_size; } ;
struct TYPE_8__ {int arcs_size; } ;


 scalar_t__ ARC_BUFC_DATA ;
 scalar_t__ ARC_BUFC_METADATA ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 scalar_t__ aggsum_value (int *) ;
 scalar_t__ arc_adjust_impl (TYPE_1__*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ arc_adjust_meta (scalar_t__) ;
 scalar_t__ arc_adjust_type (TYPE_1__*) ;
 TYPE_5__* arc_anon ;
 scalar_t__ arc_c ;
 scalar_t__ arc_meta_min ;
 int arc_meta_used ;
 TYPE_1__* arc_mfu ;
 TYPE_1__* arc_mfu_ghost ;
 TYPE_1__* arc_mru ;
 TYPE_1__* arc_mru_ghost ;
 scalar_t__ arc_p ;
 int arc_size ;
 scalar_t__ zfs_refcount_count (int *) ;

__attribute__((used)) static uint64_t
arc_adjust(void)
{
 uint64_t total_evicted = 0;
 uint64_t bytes;
 int64_t target;
 uint64_t asize = aggsum_value(&arc_size);
 uint64_t ameta = aggsum_value(&arc_meta_used);





 total_evicted += arc_adjust_meta(ameta);
 target = MIN((int64_t)(asize - arc_c),
     (int64_t)(zfs_refcount_count(&arc_anon->arcs_size) +
     zfs_refcount_count(&arc_mru->arcs_size) + ameta - arc_p));
 if (arc_adjust_type(arc_mru) == ARC_BUFC_METADATA &&
     ameta > arc_meta_min) {
  bytes = arc_adjust_impl(arc_mru, 0, target, ARC_BUFC_METADATA);
  total_evicted += bytes;





  target -= bytes;

  total_evicted +=
      arc_adjust_impl(arc_mru, 0, target, ARC_BUFC_DATA);
 } else {
  bytes = arc_adjust_impl(arc_mru, 0, target, ARC_BUFC_DATA);
  total_evicted += bytes;





  target -= bytes;

  total_evicted +=
      arc_adjust_impl(arc_mru, 0, target, ARC_BUFC_METADATA);
 }




 asize = aggsum_value(&arc_size);
 ameta = aggsum_value(&arc_meta_used);
 target = asize - arc_c;

 if (arc_adjust_type(arc_mfu) == ARC_BUFC_METADATA &&
     ameta > arc_meta_min) {
  bytes = arc_adjust_impl(arc_mfu, 0, target, ARC_BUFC_METADATA);
  total_evicted += bytes;





  target -= bytes;

  total_evicted +=
      arc_adjust_impl(arc_mfu, 0, target, ARC_BUFC_DATA);
 } else {
  bytes = arc_adjust_impl(arc_mfu, 0, target, ARC_BUFC_DATA);
  total_evicted += bytes;





  target -= bytes;

  total_evicted +=
      arc_adjust_impl(arc_mfu, 0, target, ARC_BUFC_METADATA);
 }
 target = zfs_refcount_count(&arc_mru->arcs_size) +
     zfs_refcount_count(&arc_mru_ghost->arcs_size) - arc_c;

 bytes = arc_adjust_impl(arc_mru_ghost, 0, target, ARC_BUFC_DATA);
 total_evicted += bytes;

 target -= bytes;

 total_evicted +=
     arc_adjust_impl(arc_mru_ghost, 0, target, ARC_BUFC_METADATA);
 target = zfs_refcount_count(&arc_mru_ghost->arcs_size) +
     zfs_refcount_count(&arc_mfu_ghost->arcs_size) - arc_c;

 bytes = arc_adjust_impl(arc_mfu_ghost, 0, target, ARC_BUFC_DATA);
 total_evicted += bytes;

 target -= bytes;

 total_evicted +=
     arc_adjust_impl(arc_mfu_ghost, 0, target, ARC_BUFC_METADATA);

 return (total_evicted);
}
