
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CE_WARN ;
 int CRYPTO_SUCCESS ;
 int cmn_err (int ,char*,int) ;
 int crypto_register_provider (int *,int *) ;
 int mod_install (int *) ;
 int modlinkage ;
 int sha1_prov_handle ;
 int sha1_prov_info ;

int
sha1_mod_init(void)
{
 int ret;

 if ((ret = mod_install(&modlinkage)) != 0)
  return (ret);






 if ((ret = crypto_register_provider(&sha1_prov_info,
     &sha1_prov_handle)) != CRYPTO_SUCCESS)
  cmn_err(CE_WARN, "sha1 _init: "
      "crypto_register_provider() failed (0x%x)", ret);

 return (0);
}
