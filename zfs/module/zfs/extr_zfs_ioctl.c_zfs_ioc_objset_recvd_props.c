
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zc_nvlist_dst; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;


 int ENOTSUP ;
 int SET_ERROR (int ) ;
 int dsl_prop_get_hasrecvd (int ) ;
 int dsl_prop_get_received (int ,int **) ;
 int nvlist_free (int *) ;
 int put_nvlist (TYPE_1__*,int *) ;

__attribute__((used)) static int
zfs_ioc_objset_recvd_props(zfs_cmd_t *zc)
{
 int error = 0;
 nvlist_t *nv;






 if (!dsl_prop_get_hasrecvd(zc->zc_name))
  return (SET_ERROR(ENOTSUP));

 if (zc->zc_nvlist_dst != 0 &&
     (error = dsl_prop_get_received(zc->zc_name, &nv)) == 0) {
  error = put_nvlist(zc, nv);
  nvlist_free(nv);
 }

 return (error);
}
