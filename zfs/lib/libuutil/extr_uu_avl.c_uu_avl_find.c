
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ua_debug; int ua_tree; TYPE_1__* ua_pool; } ;
typedef TYPE_2__ uu_avl_t ;
typedef int uu_avl_index_t ;
struct uu_avl_node_compare_info {void* ac_found; void* ac_right; void* ac_private; int ac_compare; } ;
struct TYPE_5__ {int uap_cmp; } ;


 int INDEX_ENCODE (TYPE_2__*,int ) ;
 void* avl_find (int *,struct uu_avl_node_compare_info*,int *) ;
 int uu_panic (char*) ;

void *
uu_avl_find(uu_avl_t *ap, void *elem, void *private, uu_avl_index_t *out)
{
 struct uu_avl_node_compare_info info;
 void *result;

 info.ac_compare = ap->ua_pool->uap_cmp;
 info.ac_private = private;
 info.ac_right = elem;
 info.ac_found = ((void*)0);

 result = avl_find(&ap->ua_tree, &info, out);
 if (out != ((void*)0))
  *out = INDEX_ENCODE(ap, *out);

 if (ap->ua_debug && result != ((void*)0))
  uu_panic("uu_avl_find: internal error: avl_find succeeded\n");

 return (info.ac_found);
}
