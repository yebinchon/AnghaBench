
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_6__ {size_t pd_prov_id; scalar_t__ pd_kcf_prov_handle; } ;
typedef TYPE_1__ kcf_provider_desc_t ;
typedef scalar_t__ crypto_kcf_provider_handle_t ;


 int ASSERT (int ) ;
 int CE_WARN ;
 int CRYPTO_HOST_MEMORY ;
 int CRYPTO_SUCCESS ;
 size_t KCF_MAX_PROVIDERS ;
 int KCF_PROV_IREFHOLD (TYPE_1__*) ;
 int KCF_PROV_REFHOLD (TYPE_1__*) ;
 int cmn_err (int ,char*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 TYPE_1__** prov_tab ;
 int prov_tab_mutex ;
 int prov_tab_num ;

int
kcf_prov_tab_add_provider(kcf_provider_desc_t *prov_desc)
{
 uint_t i;

 ASSERT(prov_tab != ((void*)0));

 mutex_enter(&prov_tab_mutex);


 for (i = 1; i < KCF_MAX_PROVIDERS && prov_tab[i] != ((void*)0); i++)
  ;
 if (i == KCF_MAX_PROVIDERS) {

  mutex_exit(&prov_tab_mutex);
  cmn_err(CE_WARN, "out of providers entries");
  return (CRYPTO_HOST_MEMORY);
 }


 prov_tab[i] = prov_desc;
 KCF_PROV_REFHOLD(prov_desc);
 KCF_PROV_IREFHOLD(prov_desc);
 prov_tab_num++;

 mutex_exit(&prov_tab_mutex);


 prov_desc->pd_prov_id = i;





 prov_desc->pd_kcf_prov_handle =
     (crypto_kcf_provider_handle_t)prov_desc->pd_prov_id;

 return (CRYPTO_SUCCESS);
}
