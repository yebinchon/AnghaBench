
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kcf_provider_desc_t ;


 int KM_SLEEP ;
 int MUTEX_DEFAULT ;
 int kmem_zalloc (int,int ) ;
 int mutex_init (int *,int *,int ,int *) ;
 int prov_tab ;
 int prov_tab_max ;
 int prov_tab_mutex ;

void
kcf_prov_tab_init(void)
{
 mutex_init(&prov_tab_mutex, ((void*)0), MUTEX_DEFAULT, ((void*)0));

 prov_tab = kmem_zalloc(prov_tab_max * sizeof (kcf_provider_desc_t *),
     KM_SLEEP);
}
