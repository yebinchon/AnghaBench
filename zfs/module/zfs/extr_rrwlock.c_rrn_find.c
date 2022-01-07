
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rr_linked_rcount; } ;
typedef TYPE_1__ rrwlock_t ;
struct TYPE_7__ {TYPE_1__* rn_rrl; struct TYPE_7__* rn_next; } ;
typedef TYPE_2__ rrw_node_t ;


 int rrw_tsd_key ;
 TYPE_2__* tsd_get (int ) ;
 scalar_t__ zfs_refcount_count (int *) ;

__attribute__((used)) static rrw_node_t *
rrn_find(rrwlock_t *rrl)
{
 rrw_node_t *rn;

 if (zfs_refcount_count(&rrl->rr_linked_rcount) == 0)
  return (((void*)0));

 for (rn = tsd_get(rrw_tsd_key); rn != ((void*)0); rn = rn->rn_next) {
  if (rn->rn_rrl == rrl)
   return (rn);
 }
 return (((void*)0));
}
