
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int kcf_provider_desc_t ;


 int KCF_PROV_REFRELE (int *) ;
 int kmem_free (int **,int) ;

void
kcf_free_provider_tab(uint_t count, kcf_provider_desc_t **array)
{
 kcf_provider_desc_t *prov_desc;
 int i;

 for (i = 0; i < count; i++) {
  if ((prov_desc = array[i]) != ((void*)0)) {
   KCF_PROV_REFRELE(prov_desc);
  }
 }
 kmem_free(array, count * sizeof (kcf_provider_desc_t *));
}
