
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kcf_provider_desc_t ;


 int KCF_PROV_IREFHOLD (int *) ;
 int KCF_PROV_REFHOLD (int *) ;
 int init_prov_mechs (int *,int *) ;

void
redo_register_provider(kcf_provider_desc_t *pd)
{

 (void) init_prov_mechs(((void*)0), pd);







 KCF_PROV_REFHOLD(pd);
 KCF_PROV_IREFHOLD(pd);
}
