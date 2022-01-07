
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* doca_clone; char const* doca_origin; int doca_cred; } ;
typedef TYPE_1__ dmu_objset_clone_arg_t ;


 int CRED () ;
 int ZFS_SPACE_CHECK_NORMAL ;
 int dmu_objset_clone_check ;
 int dmu_objset_clone_sync ;
 int dsl_sync_task (char const*,int ,int ,TYPE_1__*,int,int ) ;

int
dmu_objset_clone(const char *clone, const char *origin)
{
 dmu_objset_clone_arg_t doca;

 doca.doca_clone = clone;
 doca.doca_origin = origin;
 doca.doca_cred = CRED();

 return (dsl_sync_task(clone,
     dmu_objset_clone_check, dmu_objset_clone_sync, &doca,
     6, ZFS_SPACE_CHECK_NORMAL));
}
