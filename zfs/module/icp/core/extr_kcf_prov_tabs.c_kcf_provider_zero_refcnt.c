
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pd_prov_type; int pd_lock; int pd_remove_cv; int pd_state; } ;
typedef TYPE_1__ kcf_provider_desc_t ;





 int KCF_PROV_DISABLED ;
 int KCF_PROV_FREED ;
 int KCF_PROV_REMOVED ;
 int cv_broadcast (int *) ;
 int kcf_free_provider_desc (TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
kcf_provider_zero_refcnt(kcf_provider_desc_t *desc)
{
 mutex_enter(&desc->pd_lock);
 switch (desc->pd_prov_type) {
 case 128:
  if (desc->pd_state == KCF_PROV_REMOVED ||
      desc->pd_state == KCF_PROV_DISABLED) {
   desc->pd_state = KCF_PROV_FREED;
   cv_broadcast(&desc->pd_remove_cv);
   mutex_exit(&desc->pd_lock);
   break;
  }


 case 130:
 case 129:
  mutex_exit(&desc->pd_lock);
  kcf_free_provider_desc(desc);
 }
}
