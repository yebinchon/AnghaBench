
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int uqn_delta; int uqn_id; } ;
typedef TYPE_1__ userquota_node_t ;
typedef scalar_t__ int64_t ;
typedef int avl_tree_t ;
typedef int avl_index_t ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 TYPE_1__* avl_find (int *,void const*,int *) ;
 int avl_insert (int *,TYPE_1__*,int ) ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int strlcpy (int ,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void
userquota_update_cache(avl_tree_t *avl, const char *id, int64_t delta)
{
 userquota_node_t *uqn;
 avl_index_t idx;

 ASSERT(strlen(id) < sizeof (uqn->uqn_id));





 uqn = avl_find(avl, (const void *)id, &idx);
 if (uqn == ((void*)0)) {
  uqn = kmem_zalloc(sizeof (*uqn), KM_SLEEP);
  strlcpy(uqn->uqn_id, id, sizeof (uqn->uqn_id));
  avl_insert(avl, uqn, idx);
 }
 uqn->uqn_delta += delta;
}
