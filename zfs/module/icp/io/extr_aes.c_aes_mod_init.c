
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EACCES ;
 int aes_impl_init () ;
 int aes_prov_handle ;
 int aes_prov_info ;
 scalar_t__ crypto_register_provider (int *,int *) ;
 int gcm_impl_init () ;
 int mod_install (int *) ;
 int mod_remove (int *) ;
 int modlinkage ;

int
aes_mod_init(void)
{
 int ret;


 aes_impl_init();
 gcm_impl_init();

 if ((ret = mod_install(&modlinkage)) != 0)
  return (ret);


 if (crypto_register_provider(&aes_prov_info, &aes_prov_handle)) {
  (void) mod_remove(&modlinkage);
  return (EACCES);
 }

 return (0);
}
