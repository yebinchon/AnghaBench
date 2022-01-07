
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* pd_kstat; } ;
typedef TYPE_1__ kcf_provider_desc_t ;
struct TYPE_7__ {TYPE_1__* ks_private; } ;


 int ASSERT (int) ;
 int KCF_PROV_IREFRELE (TYPE_1__*) ;
 int KCF_PROV_REFRELE (TYPE_1__*) ;
 int kstat_delete (TYPE_2__*) ;

__attribute__((used)) static void
delete_kstat(kcf_provider_desc_t *desc)
{

 if (desc->pd_kstat != ((void*)0)) {
  kcf_provider_desc_t *kspd = desc->pd_kstat->ks_private;


  ASSERT(desc == kspd);
  kstat_delete(kspd->pd_kstat);
  desc->pd_kstat = ((void*)0);
  KCF_PROV_REFRELE(kspd);
  KCF_PROV_IREFRELE(kspd);
 }
}
