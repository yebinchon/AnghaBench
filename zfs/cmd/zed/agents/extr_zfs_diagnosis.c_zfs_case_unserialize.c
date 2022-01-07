
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_9__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ zc_version; scalar_t__ zc_has_remove_timer; } ;
struct TYPE_10__ {int zc_node; int zc_remove_timer; TYPE_9__ zc_data; int * zc_case; } ;
typedef TYPE_1__ zfs_case_t ;
typedef int fmd_hdl_t ;
typedef int fmd_case_t ;


 int CASE_DATA ;
 scalar_t__ CASE_DATA_VERSION_SERD ;
 int FMD_SLEEP ;
 int fmd_buf_read (int *,int *,int ,TYPE_9__*,int) ;
 int fmd_case_setspecific (int *,int *,TYPE_1__*) ;
 int fmd_hdl_free (int *,TYPE_1__*,int) ;
 TYPE_1__* fmd_hdl_zalloc (int *,int,int ) ;
 int fmd_timer_install (int *,TYPE_1__*,int *,int ) ;
 int uu_list_insert_before (int ,int *,TYPE_1__*) ;
 int uu_list_node_init (TYPE_1__*,int *,int ) ;
 int zfs_case_pool ;
 int zfs_cases ;
 int zfs_remove_timeout ;

__attribute__((used)) static zfs_case_t *
zfs_case_unserialize(fmd_hdl_t *hdl, fmd_case_t *cp)
{
 zfs_case_t *zcp;

 zcp = fmd_hdl_zalloc(hdl, sizeof (zfs_case_t), FMD_SLEEP);
 zcp->zc_case = cp;

 fmd_buf_read(hdl, cp, CASE_DATA, &zcp->zc_data,
     sizeof (zcp->zc_data));

 if (zcp->zc_data.zc_version > CASE_DATA_VERSION_SERD) {
  fmd_hdl_free(hdl, zcp, sizeof (zfs_case_t));
  return (((void*)0));
 }







 if (zcp->zc_data.zc_has_remove_timer)
  zcp->zc_remove_timer = fmd_timer_install(hdl, zcp,
      ((void*)0), zfs_remove_timeout);

 uu_list_node_init(zcp, &zcp->zc_node, zfs_case_pool);
 (void) uu_list_insert_before(zfs_cases, ((void*)0), zcp);

 fmd_case_setspecific(hdl, cp, zcp);

 return (zcp);
}
