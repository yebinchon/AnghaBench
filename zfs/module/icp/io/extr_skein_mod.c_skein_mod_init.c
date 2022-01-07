
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_register_provider (int *,int *) ;
 int mod_install (int *) ;
 int modlinkage ;
 int skein_prov_handle ;
 int skein_prov_info ;

int
skein_mod_init(void)
{
 int error;

 if ((error = mod_install(&modlinkage)) != 0)
  return (error);





 (void) crypto_register_provider(&skein_prov_info, &skein_prov_handle);

 return (0);
}
