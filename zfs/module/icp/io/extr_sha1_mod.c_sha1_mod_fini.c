
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
 scalar_t__ sha1_prov_handle ;

int
sha1_mod_fini(void)
{
 int ret;

 if (sha1_prov_handle != 0) {
  if ((ret = crypto_unregister_provider(sha1_prov_handle)) !=
      CRYPTO_SUCCESS) {
   cmn_err(CE_WARN,
       "sha1 _fini: crypto_unregister_provider() "
       "failed (0x%x)", ret);
   return (EBUSY);
  }
  sha1_prov_handle = 0;
 }

 return (mod_remove(&modlinkage));
}
