
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;


 int dsl_deleg_get (int ,int **) ;
 int nvlist_free (int *) ;
 int put_nvlist (TYPE_1__*,int *) ;

__attribute__((used)) static int
zfs_ioc_get_fsacl(zfs_cmd_t *zc)
{
 nvlist_t *nvp;
 int error;

 if ((error = dsl_deleg_get(zc->zc_name, &nvp)) == 0) {
  error = put_nvlist(zc, nvp);
  nvlist_free(nvp);
 }

 return (error);
}
