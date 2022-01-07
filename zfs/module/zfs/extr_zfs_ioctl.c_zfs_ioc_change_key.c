
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;
typedef int dsl_crypto_params_t ;


 int B_FALSE ;
 int B_TRUE ;
 int DCP_CMD_NONE ;
 int EINVAL ;
 int SET_ERROR (int ) ;
 char* ZPOOL_HIDDEN_ARGS ;
 int dsl_crypto_params_create_nvlist (int ,int *,int *,int **) ;
 int dsl_crypto_params_free (int *,int ) ;
 int nvlist_lookup_nvlist (int *,char*,int **) ;
 int nvlist_lookup_uint64 (int *,char*,int *) ;
 int spa_keystore_change_key (char const*,int *) ;
 int * strchr (char const*,char) ;

__attribute__((used)) static int
zfs_ioc_change_key(const char *dsname, nvlist_t *innvl, nvlist_t *outnvl)
{
 int ret;
 uint64_t cmd = DCP_CMD_NONE;
 dsl_crypto_params_t *dcp = ((void*)0);
 nvlist_t *args = ((void*)0), *hidden_args = ((void*)0);

 if (strchr(dsname, '@') != ((void*)0) || strchr(dsname, '%') != ((void*)0)) {
  ret = (SET_ERROR(EINVAL));
  goto error;
 }

 (void) nvlist_lookup_uint64(innvl, "crypt_cmd", &cmd);
 (void) nvlist_lookup_nvlist(innvl, "props", &args);
 (void) nvlist_lookup_nvlist(innvl, ZPOOL_HIDDEN_ARGS, &hidden_args);

 ret = dsl_crypto_params_create_nvlist(cmd, args, hidden_args, &dcp);
 if (ret != 0)
  goto error;

 ret = spa_keystore_change_key(dsname, dcp);
 if (ret != 0)
  goto error;

 dsl_crypto_params_free(dcp, B_FALSE);

 return (0);

error:
 dsl_crypto_params_free(dcp, B_TRUE);
 return (ret);
}
