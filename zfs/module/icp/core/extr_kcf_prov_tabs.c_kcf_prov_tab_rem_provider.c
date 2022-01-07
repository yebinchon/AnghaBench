
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kcf_provider_desc_t ;
typedef size_t crypto_provider_id_t ;


 int ASSERT (int) ;
 int CRYPTO_INVALID_PROVIDER_ID ;
 int CRYPTO_SUCCESS ;
 size_t KCF_MAX_PROVIDERS ;
 int KCF_PROV_IREFRELE (int *) ;
 int KCF_PROV_REFRELE (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int ** prov_tab ;
 int prov_tab_mutex ;
 scalar_t__ prov_tab_num ;

int
kcf_prov_tab_rem_provider(crypto_provider_id_t prov_id)
{
 kcf_provider_desc_t *prov_desc;

 ASSERT(prov_tab != ((void*)0));
 ASSERT(prov_tab_num >= 0);






 mutex_enter(&prov_tab_mutex);
 if (prov_id >= KCF_MAX_PROVIDERS ||
     ((prov_desc = prov_tab[prov_id]) == ((void*)0))) {
  mutex_exit(&prov_tab_mutex);
  return (CRYPTO_INVALID_PROVIDER_ID);
 }
 mutex_exit(&prov_tab_mutex);
 KCF_PROV_REFRELE(prov_desc);
 KCF_PROV_IREFRELE(prov_desc);

 return (CRYPTO_SUCCESS);
}
