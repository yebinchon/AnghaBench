
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int rr_linked_rcount; } ;
typedef TYPE_1__ rrwlock_t ;
struct TYPE_8__ {void* rn_tag; struct TYPE_8__* rn_next; TYPE_1__* rn_rrl; } ;
typedef TYPE_2__ rrw_node_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int VERIFY (int) ;
 int kmem_free (TYPE_2__*,int) ;
 int rrw_tsd_key ;
 TYPE_2__* tsd_get (int ) ;
 scalar_t__ tsd_set (int ,TYPE_2__*) ;
 scalar_t__ zfs_refcount_count (int *) ;

__attribute__((used)) static boolean_t
rrn_find_and_remove(rrwlock_t *rrl, void *tag)
{
 rrw_node_t *rn;
 rrw_node_t *prev = ((void*)0);

 if (zfs_refcount_count(&rrl->rr_linked_rcount) == 0)
  return (B_FALSE);

 for (rn = tsd_get(rrw_tsd_key); rn != ((void*)0); rn = rn->rn_next) {
  if (rn->rn_rrl == rrl && rn->rn_tag == tag) {
   if (prev)
    prev->rn_next = rn->rn_next;
   else
    VERIFY(tsd_set(rrw_tsd_key, rn->rn_next) == 0);
   kmem_free(rn, sizeof (*rn));
   return (B_TRUE);
  }
  prev = rn;
 }
 return (B_FALSE);
}
