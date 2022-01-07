
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* pl_next; TYPE_2__* pl_provider; } ;
typedef TYPE_1__ kcf_provider_list_t ;
struct TYPE_8__ {int pd_lock; TYPE_1__* pd_provider_list; } ;
typedef TYPE_2__ kcf_provider_desc_t ;


 int KCF_PROV_IREFRELE (TYPE_2__*) ;
 int kmem_free (TYPE_1__*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
remove_provider_from_array(kcf_provider_desc_t *p1, kcf_provider_desc_t *p2)
{

 kcf_provider_list_t *pl = ((void*)0), **prev;

 mutex_enter(&p2->pd_lock);
 for (pl = p2->pd_provider_list, prev = &p2->pd_provider_list;
     pl != ((void*)0); prev = &pl->pl_next, pl = pl->pl_next) {
  if (pl->pl_provider == p1) {
   break;
  }
 }

 if (p1 == ((void*)0)) {
  mutex_exit(&p2->pd_lock);
  return;
 }


 KCF_PROV_IREFRELE(p1);
 *prev = pl->pl_next;
 kmem_free(pl, sizeof (*pl));
 mutex_exit(&p2->pd_lock);
}
