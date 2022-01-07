
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int sr_refcnt; int sr_offset; } ;
typedef TYPE_1__ space_ref_t ;
typedef int int64_t ;
typedef int avl_tree_t ;


 int KM_SLEEP ;
 int avl_add (int *,TYPE_1__*) ;
 TYPE_1__* kmem_alloc (int,int ) ;

__attribute__((used)) static void
space_reftree_add_node(avl_tree_t *t, uint64_t offset, int64_t refcnt)
{
 space_ref_t *sr;

 sr = kmem_alloc(sizeof (*sr), KM_SLEEP);
 sr->sr_offset = offset;
 sr->sr_refcnt = refcnt;

 avl_add(t, sr);
}
