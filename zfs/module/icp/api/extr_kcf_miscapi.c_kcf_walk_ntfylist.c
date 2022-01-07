
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int kn_event_mask; int kn_lock; int kn_cv; int kn_state; int (* kn_func ) (int,void*) ;struct TYPE_3__* kn_next; } ;
typedef TYPE_1__ kcf_ntfy_elem_t ;


 int NTFY_RUNNING ;
 int NTFY_WAITING ;
 int cv_broadcast (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 TYPE_1__* ntfy_list_head ;
 int ntfy_list_lock ;
 int stub1 (int,void*) ;

void
kcf_walk_ntfylist(uint32_t event, void *event_arg)
{
 kcf_ntfy_elem_t *nep;
 int nelem = 0;

 mutex_enter(&ntfy_list_lock);






 for (nep = ntfy_list_head; nep != ((void*)0); nep = nep->kn_next)
  nelem++;

 for (nep = ntfy_list_head; (nep != ((void*)0) && nelem); nep = nep->kn_next) {
  nelem--;





  if (!(nep->kn_event_mask & event))
   continue;

  mutex_enter(&nep->kn_lock);
  nep->kn_state = NTFY_RUNNING;
  mutex_exit(&nep->kn_lock);
  mutex_exit(&ntfy_list_lock);
  (*nep->kn_func)(event, event_arg);

  mutex_enter(&nep->kn_lock);
  nep->kn_state = NTFY_WAITING;
  cv_broadcast(&nep->kn_cv);
  mutex_exit(&nep->kn_lock);

  mutex_enter(&ntfy_list_lock);
 }

 mutex_exit(&ntfy_list_lock);
}
