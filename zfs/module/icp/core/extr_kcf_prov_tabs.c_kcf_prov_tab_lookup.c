
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kcf_provider_desc_t ;
typedef size_t crypto_provider_id_t ;


 int KCF_PROV_REFHOLD (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int ** prov_tab ;
 int prov_tab_mutex ;

kcf_provider_desc_t *
kcf_prov_tab_lookup(crypto_provider_id_t prov_id)
{
 kcf_provider_desc_t *prov_desc;

 mutex_enter(&prov_tab_mutex);

 prov_desc = prov_tab[prov_id];

 if (prov_desc == ((void*)0)) {
  mutex_exit(&prov_tab_mutex);
  return (((void*)0));
 }

 KCF_PROV_REFHOLD(prov_desc);

 mutex_exit(&prov_tab_mutex);

 return (prov_desc);
}
