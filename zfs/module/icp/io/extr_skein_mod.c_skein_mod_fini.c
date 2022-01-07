
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CE_WARN ;
 int CRYPTO_SUCCESS ;
 int EBUSY ;
 int cmn_err (int ,char*,int) ;
 int crypto_unregister_provider (scalar_t__) ;
 int mod_remove (int *) ;
 int modlinkage ;
 scalar_t__ skein_prov_handle ;

int
skein_mod_fini(void)
{
 int ret;

 if (skein_prov_handle != 0) {
  if ((ret = crypto_unregister_provider(skein_prov_handle)) !=
      CRYPTO_SUCCESS) {
   cmn_err(CE_WARN,
       "skein _fini: crypto_unregister_provider() "
       "failed (0x%x)", ret);
   return (EBUSY);
  }
  skein_prov_handle = 0;
 }

 return (mod_remove(&modlinkage));
}
