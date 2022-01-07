
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ dsl_crypto_params_t ;
typedef int dmu_objset_type_t ;
typedef int dmu_objset_create_sync_func_t ;
struct TYPE_6__ {char const* doca_name; TYPE_1__* doca_dcp; int doca_type; void* doca_userarg; int doca_userfunc; int doca_flags; int doca_cred; } ;
typedef TYPE_2__ dmu_objset_create_arg_t ;


 int CRED () ;
 int ZFS_SPACE_CHECK_NORMAL ;
 int dmu_objset_create_check ;
 int dmu_objset_create_sync ;
 int dsl_sync_task (char const*,int ,int ,TYPE_2__*,int,int ) ;

int
dmu_objset_create(const char *name, dmu_objset_type_t type, uint64_t flags,
    dsl_crypto_params_t *dcp, dmu_objset_create_sync_func_t func, void *arg)
{
 dmu_objset_create_arg_t doca;
 dsl_crypto_params_t tmp_dcp = { 0 };

 doca.doca_name = name;
 doca.doca_cred = CRED();
 doca.doca_flags = flags;
 doca.doca_userfunc = func;
 doca.doca_userarg = arg;
 doca.doca_type = type;
 doca.doca_dcp = (dcp != ((void*)0)) ? dcp : &tmp_dcp;

 return (dsl_sync_task(name,
     dmu_objset_create_check, dmu_objset_create_sync, &doca,
     6, ZFS_SPACE_CHECK_NORMAL));
}
