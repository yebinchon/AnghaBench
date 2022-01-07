
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int rrwlock_t ;
struct TYPE_4__ {void* rn_tag; int rn_next; int * rn_rrl; } ;
typedef TYPE_1__ rrw_node_t ;


 int KM_SLEEP ;
 int VERIFY (int) ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int rrw_tsd_key ;
 int tsd_get (int ) ;
 scalar_t__ tsd_set (int ,TYPE_1__*) ;

__attribute__((used)) static void
rrn_add(rrwlock_t *rrl, void *tag)
{
 rrw_node_t *rn;

 rn = kmem_alloc(sizeof (*rn), KM_SLEEP);
 rn->rn_rrl = rrl;
 rn->rn_next = tsd_get(rrw_tsd_key);
 rn->rn_tag = tag;
 VERIFY(tsd_set(rrw_tsd_key, rn) == 0);
}
