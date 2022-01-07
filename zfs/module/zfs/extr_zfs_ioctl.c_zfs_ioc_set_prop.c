
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zprop_source_t ;
struct TYPE_4__ {scalar_t__ zc_nvlist_dst; int zc_name; int zc_iflags; int zc_nvlist_src_size; int zc_nvlist_src; scalar_t__ zc_cookie; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 int ZPROP_SRC_LOCAL ;
 int ZPROP_SRC_RECEIVED ;
 int clear_received_props (int ,int *,int *) ;
 scalar_t__ dsl_prop_get_received (int ,int **) ;
 int dsl_prop_set_hasrecvd (int ) ;
 int * fnvlist_alloc () ;
 int get_nvlist (int ,int ,int ,int **) ;
 int nvlist_free (int *) ;
 int put_nvlist (TYPE_1__*,int *) ;
 int zfs_set_prop_nvlist (int ,int ,int *,int *) ;

__attribute__((used)) static int
zfs_ioc_set_prop(zfs_cmd_t *zc)
{
 nvlist_t *nvl;
 boolean_t received = zc->zc_cookie;
 zprop_source_t source = (received ? ZPROP_SRC_RECEIVED :
     ZPROP_SRC_LOCAL);
 nvlist_t *errors;
 int error;

 if ((error = get_nvlist(zc->zc_nvlist_src, zc->zc_nvlist_src_size,
     zc->zc_iflags, &nvl)) != 0)
  return (error);

 if (received) {
  nvlist_t *origprops;

  if (dsl_prop_get_received(zc->zc_name, &origprops) == 0) {
   (void) clear_received_props(zc->zc_name,
       origprops, nvl);
   nvlist_free(origprops);
  }

  error = dsl_prop_set_hasrecvd(zc->zc_name);
 }

 errors = fnvlist_alloc();
 if (error == 0)
  error = zfs_set_prop_nvlist(zc->zc_name, source, nvl, errors);

 if (zc->zc_nvlist_dst != 0 && errors != ((void*)0)) {
  (void) put_nvlist(zc, errors);
 }

 nvlist_free(errors);
 nvlist_free(nvl);
 return (error);
}
