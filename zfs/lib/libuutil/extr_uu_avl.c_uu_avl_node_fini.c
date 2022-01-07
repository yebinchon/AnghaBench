
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uap_name; scalar_t__ uap_debug; } ;
typedef TYPE_1__ uu_avl_pool_t ;
typedef int uu_avl_node_t ;


 uintptr_t DEAD_MARKER ;
 uintptr_t POOL_TO_MARKER (TYPE_1__*) ;
 int uu_panic (char*,void*,void*,void*,int ) ;

void
uu_avl_node_fini(void *base, uu_avl_node_t *np, uu_avl_pool_t *pp)
{
 uintptr_t *na = (uintptr_t *)np;

 if (pp->uap_debug) {
  if (na[0] == DEAD_MARKER && na[1] == DEAD_MARKER) {
   uu_panic("uu_avl_node_fini(%p, %p, %p (\"%s\")): "
       "node already finied\n",
       base, (void *)np, (void *)pp, pp->uap_name);
  }
  if (na[0] != POOL_TO_MARKER(pp) || na[1] != 0) {
   uu_panic("uu_avl_node_fini(%p, %p, %p (\"%s\")): "
       "node corrupt, in tree, or in different pool\n",
       base, (void *)np, (void *)pp, pp->uap_name);
  }
 }

 na[0] = DEAD_MARKER;
 na[1] = DEAD_MARKER;
 na[2] = DEAD_MARKER;
}
