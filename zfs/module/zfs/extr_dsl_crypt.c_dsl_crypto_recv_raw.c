
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int nvlist_t ;
struct TYPE_3__ {int dcrka_do_key; int * dcrka_nvl; int dcrka_ostype; void* dcrka_fromobj; void* dcrka_dsobj; } ;
typedef TYPE_1__ dsl_crypto_recv_key_arg_t ;
typedef int dmu_objset_type_t ;
typedef int boolean_t ;


 int ZFS_SPACE_CHECK_NORMAL ;
 int dsl_crypto_recv_key_check ;
 int dsl_crypto_recv_key_sync ;
 int dsl_sync_task (char const*,int ,int ,TYPE_1__*,int,int ) ;

int
dsl_crypto_recv_raw(const char *poolname, uint64_t dsobj, uint64_t fromobj,
    dmu_objset_type_t ostype, nvlist_t *nvl, boolean_t do_key)
{
 dsl_crypto_recv_key_arg_t dcrka;

 dcrka.dcrka_dsobj = dsobj;
 dcrka.dcrka_fromobj = fromobj;
 dcrka.dcrka_ostype = ostype;
 dcrka.dcrka_nvl = nvl;
 dcrka.dcrka_do_key = do_key;

 return (dsl_sync_task(poolname, dsl_crypto_recv_key_check,
     dsl_crypto_recv_key_sync, &dcrka, 1, ZFS_SPACE_CHECK_NORMAL));
}
