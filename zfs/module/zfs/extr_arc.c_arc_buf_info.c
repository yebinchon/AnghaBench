
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int b_hits; int b_daddr; } ;
typedef TYPE_1__ l2arc_buf_hdr_t ;
struct TYPE_15__ {int b_refcnt; int b_mfu_ghost_hits; int b_mfu_hits; int b_mru_ghost_hits; int b_mru_hits; int b_arc_access; int b_bufcnt; TYPE_3__* b_state; } ;
typedef TYPE_2__ l1arc_buf_hdr_t ;
struct TYPE_16__ {int arcs_state; } ;
typedef TYPE_3__ arc_state_t ;
struct TYPE_17__ {TYPE_6__* b_hdr; } ;
typedef TYPE_4__ arc_buf_t ;
struct TYPE_18__ {int abi_size; int abi_state_contents; int abi_state_type; int abi_l2arc_hits; int abi_l2arc_dattr; int abi_holds; int abi_mfu_ghost_hits; int abi_mfu_hits; int abi_mru_ghost_hits; int abi_mru_hits; int abi_access; int abi_bufcnt; int abi_flags; } ;
typedef TYPE_5__ arc_buf_info_t ;
struct TYPE_19__ {TYPE_1__ b_l2hdr; TYPE_2__ b_l1hdr; int b_flags; } ;
typedef TYPE_6__ arc_buf_hdr_t ;


 int ARC_STATE_ANON ;
 scalar_t__ HDR_HAS_L1HDR (TYPE_6__*) ;
 scalar_t__ HDR_HAS_L2HDR (TYPE_6__*) ;
 int arc_buf_type (TYPE_6__*) ;
 int arc_hdr_size (TYPE_6__*) ;
 int memset (TYPE_5__*,int ,int) ;
 int zfs_refcount_count (int *) ;

void
arc_buf_info(arc_buf_t *ab, arc_buf_info_t *abi, int state_index)
{
 arc_buf_hdr_t *hdr = ab->b_hdr;
 l1arc_buf_hdr_t *l1hdr = ((void*)0);
 l2arc_buf_hdr_t *l2hdr = ((void*)0);
 arc_state_t *state = ((void*)0);

 memset(abi, 0, sizeof (arc_buf_info_t));

 if (hdr == ((void*)0))
  return;

 abi->abi_flags = hdr->b_flags;

 if (HDR_HAS_L1HDR(hdr)) {
  l1hdr = &hdr->b_l1hdr;
  state = l1hdr->b_state;
 }
 if (HDR_HAS_L2HDR(hdr))
  l2hdr = &hdr->b_l2hdr;

 if (l1hdr) {
  abi->abi_bufcnt = l1hdr->b_bufcnt;
  abi->abi_access = l1hdr->b_arc_access;
  abi->abi_mru_hits = l1hdr->b_mru_hits;
  abi->abi_mru_ghost_hits = l1hdr->b_mru_ghost_hits;
  abi->abi_mfu_hits = l1hdr->b_mfu_hits;
  abi->abi_mfu_ghost_hits = l1hdr->b_mfu_ghost_hits;
  abi->abi_holds = zfs_refcount_count(&l1hdr->b_refcnt);
 }

 if (l2hdr) {
  abi->abi_l2arc_dattr = l2hdr->b_daddr;
  abi->abi_l2arc_hits = l2hdr->b_hits;
 }

 abi->abi_state_type = state ? state->arcs_state : ARC_STATE_ANON;
 abi->abi_state_contents = arc_buf_type(hdr);
 abi->abi_size = arc_hdr_size(hdr);
}
