
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kcf_provider_desc_t ;


 int kmem_free (scalar_t__,int) ;
 int mutex_destroy (int *) ;
 scalar_t__ prov_tab ;
 int prov_tab_max ;
 int prov_tab_mutex ;

void
kcf_prov_tab_destroy(void)
{
 mutex_destroy(&prov_tab_mutex);

 if (prov_tab)
  kmem_free(prov_tab, prov_tab_max *
      sizeof (kcf_provider_desc_t *));
}
