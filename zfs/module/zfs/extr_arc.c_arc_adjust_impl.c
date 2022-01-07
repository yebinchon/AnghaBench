
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ int64_t ;
struct TYPE_4__ {int * arcs_esize; } ;
typedef TYPE_1__ arc_state_t ;
typedef size_t arc_buf_contents_t ;


 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int arc_evict_state (TYPE_1__*,int ,scalar_t__,size_t) ;
 scalar_t__ zfs_refcount_count (int *) ;

__attribute__((used)) static uint64_t
arc_adjust_impl(arc_state_t *state, uint64_t spa, int64_t bytes,
    arc_buf_contents_t type)
{
 int64_t delta;

 if (bytes > 0 && zfs_refcount_count(&state->arcs_esize[type]) > 0) {
  delta = MIN(zfs_refcount_count(&state->arcs_esize[type]),
      bytes);
  return (arc_evict_state(state, spa, delta, type));
 }

 return (0);
}
