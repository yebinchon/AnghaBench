
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* skcka_dsname; int * skcka_cp; } ;
typedef TYPE_1__ spa_keystore_change_key_args_t ;
typedef int dsl_crypto_params_t ;


 int ZFS_SPACE_CHECK_RESERVED ;
 int dsl_sync_task (char const*,int ,int ,TYPE_1__*,int,int ) ;
 int spa_keystore_change_key_check ;
 int spa_keystore_change_key_sync ;

int
spa_keystore_change_key(const char *dsname, dsl_crypto_params_t *dcp)
{
 spa_keystore_change_key_args_t skcka;


 skcka.skcka_dsname = dsname;
 skcka.skcka_cp = dcp;







 return (dsl_sync_task(dsname, spa_keystore_change_key_check,
     spa_keystore_change_key_sync, &skcka, 15,
     ZFS_SPACE_CHECK_RESERVED));
}
