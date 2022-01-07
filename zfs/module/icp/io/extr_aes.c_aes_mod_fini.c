
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 scalar_t__ aes_prov_handle ;
 scalar_t__ crypto_unregister_provider (scalar_t__) ;
 int mod_remove (int *) ;
 int modlinkage ;

int
aes_mod_fini(void)
{

 if (aes_prov_handle != 0) {
  if (crypto_unregister_provider(aes_prov_handle))
   return (EBUSY);

  aes_prov_handle = 0;
 }

 return (mod_remove(&modlinkage));
}
