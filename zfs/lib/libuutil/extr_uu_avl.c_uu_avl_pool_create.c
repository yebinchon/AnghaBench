
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uu_compare_fn_t ;
struct TYPE_7__ {void* ua_prev_enc; void* ua_next_enc; } ;
struct TYPE_6__ {size_t uap_nodeoffset; size_t uap_objsize; int uap_debug; struct TYPE_6__* uap_next; struct TYPE_6__* uap_prev; TYPE_5__ uap_null_avl; int uap_lock; scalar_t__ uap_last_index; int * uap_cmp; int uap_name; } ;
typedef TYPE_1__ uu_avl_pool_t ;
typedef int uu_avl_node_t ;
typedef int uint32_t ;


 int UU_AVL_POOL_DEBUG ;
 int UU_ERROR_INVALID_ARGUMENT ;
 int UU_ERROR_NO_MEMORY ;
 int UU_ERROR_UNKNOWN_FLAG ;
 int UU_NAME_DOMAIN ;
 void* UU_PTR_ENCODE (TYPE_5__*) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int strlcpy (int ,char const*,int) ;
 int uu_apool_list_lock ;
 int uu_check_name (char const*,int ) ;
 TYPE_1__ uu_null_apool ;
 int uu_set_error (int ) ;
 TYPE_1__* uu_zalloc (int) ;

uu_avl_pool_t *
uu_avl_pool_create(const char *name, size_t objsize, size_t nodeoffset,
    uu_compare_fn_t *compare_func, uint32_t flags)
{
 uu_avl_pool_t *pp, *next, *prev;

 if (name == ((void*)0) ||
     uu_check_name(name, UU_NAME_DOMAIN) == -1 ||
     nodeoffset + sizeof (uu_avl_node_t) > objsize ||
     compare_func == ((void*)0)) {
  uu_set_error(UU_ERROR_INVALID_ARGUMENT);
  return (((void*)0));
 }

 if (flags & ~UU_AVL_POOL_DEBUG) {
  uu_set_error(UU_ERROR_UNKNOWN_FLAG);
  return (((void*)0));
 }

 pp = uu_zalloc(sizeof (uu_avl_pool_t));
 if (pp == ((void*)0)) {
  uu_set_error(UU_ERROR_NO_MEMORY);
  return (((void*)0));
 }

 (void) strlcpy(pp->uap_name, name, sizeof (pp->uap_name));
 pp->uap_nodeoffset = nodeoffset;
 pp->uap_objsize = objsize;
 pp->uap_cmp = compare_func;
 if (flags & UU_AVL_POOL_DEBUG)
  pp->uap_debug = 1;
 pp->uap_last_index = 0;

 (void) pthread_mutex_init(&pp->uap_lock, ((void*)0));

 pp->uap_null_avl.ua_next_enc = UU_PTR_ENCODE(&pp->uap_null_avl);
 pp->uap_null_avl.ua_prev_enc = UU_PTR_ENCODE(&pp->uap_null_avl);

 (void) pthread_mutex_lock(&uu_apool_list_lock);
 pp->uap_next = next = &uu_null_apool;
 pp->uap_prev = prev = next->uap_prev;
 next->uap_prev = pp;
 prev->uap_next = pp;
 (void) pthread_mutex_unlock(&uu_apool_list_lock);

 return (pp);
}
