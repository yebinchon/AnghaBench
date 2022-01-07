
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int dsl_crypto_params_t ;
typedef int boolean_t ;


 int B_TRUE ;
 int DCP_CMD_NONE ;
 int EINVAL ;
 int SET_ERROR (int ) ;
 int ZPOOL_HIDDEN_ARGS ;
 int dsl_crypto_params_create_nvlist (int ,int *,int *,int **) ;
 int dsl_crypto_params_free (int *,int ) ;
 int * fnvlist_lookup_nvlist (int *,int ) ;
 int nvlist_exists (int *,char*) ;
 int spa_keystore_load_wkey (char const*,int *,int ) ;
 int * strchr (char const*,char) ;

__attribute__((used)) static int
zfs_ioc_load_key(const char *dsname, nvlist_t *innvl, nvlist_t *outnvl)
{
 int ret;
 dsl_crypto_params_t *dcp = ((void*)0);
 nvlist_t *hidden_args;
 boolean_t noop = nvlist_exists(innvl, "noop");

 if (strchr(dsname, '@') != ((void*)0) || strchr(dsname, '%') != ((void*)0)) {
  ret = SET_ERROR(EINVAL);
  goto error;
 }

 hidden_args = fnvlist_lookup_nvlist(innvl, ZPOOL_HIDDEN_ARGS);

 ret = dsl_crypto_params_create_nvlist(DCP_CMD_NONE, ((void*)0),
     hidden_args, &dcp);
 if (ret != 0)
  goto error;

 ret = spa_keystore_load_wkey(dsname, dcp, noop);
 if (ret != 0)
  goto error;

 dsl_crypto_params_free(dcp, noop);

 return (0);

error:
 dsl_crypto_params_free(dcp, B_TRUE);
 return (ret);
}
