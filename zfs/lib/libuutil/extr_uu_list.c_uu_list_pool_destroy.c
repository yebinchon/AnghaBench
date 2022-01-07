
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ ul_next_enc; scalar_t__ ul_prev_enc; } ;
struct TYPE_9__ {TYPE_2__* ulp_next; TYPE_1__* ulp_prev; int ulp_name; TYPE_6__ ulp_null_list; scalar_t__ ulp_debug; } ;
typedef TYPE_3__ uu_list_pool_t ;
struct TYPE_8__ {TYPE_1__* ulp_prev; } ;
struct TYPE_7__ {TYPE_2__* ulp_next; } ;


 scalar_t__ UU_PTR_ENCODE (TYPE_6__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int uu_free (TYPE_3__*) ;
 int uu_lpool_list_lock ;
 int uu_panic (char*,int,int ,void*) ;

void
uu_list_pool_destroy(uu_list_pool_t *pp)
{
 if (pp->ulp_debug) {
  if (pp->ulp_null_list.ul_next_enc !=
      UU_PTR_ENCODE(&pp->ulp_null_list) ||
      pp->ulp_null_list.ul_prev_enc !=
      UU_PTR_ENCODE(&pp->ulp_null_list)) {
   uu_panic("uu_list_pool_destroy: Pool \"%.*s\" (%p) has "
       "outstanding lists, or is corrupt.\n",
       (int)sizeof (pp->ulp_name), pp->ulp_name,
       (void *)pp);
  }
 }
 (void) pthread_mutex_lock(&uu_lpool_list_lock);
 pp->ulp_next->ulp_prev = pp->ulp_prev;
 pp->ulp_prev->ulp_next = pp->ulp_next;
 (void) pthread_mutex_unlock(&uu_lpool_list_lock);
 pp->ulp_prev = ((void*)0);
 pp->ulp_next = ((void*)0);
 uu_free(pp);
}
