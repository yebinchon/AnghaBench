
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* zc_serd_checksum; char* zc_serd_io; scalar_t__ zc_has_remove_timer; } ;
struct TYPE_8__ {int zc_node; int zc_remove_timer; TYPE_1__ zc_data; } ;
typedef TYPE_2__ zfs_case_t ;
typedef int fmd_hdl_t ;
typedef int fmd_case_t ;


 TYPE_2__* fmd_case_getspecific (int *,int *) ;
 int fmd_hdl_free (int *,TYPE_2__*,int) ;
 int fmd_serd_destroy (int *,char*) ;
 int fmd_timer_remove (int *,int ) ;
 int uu_list_node_fini (TYPE_2__*,int *,int ) ;
 int uu_list_remove (int ,TYPE_2__*) ;
 int zfs_case_pool ;
 int zfs_cases ;

__attribute__((used)) static void
zfs_fm_close(fmd_hdl_t *hdl, fmd_case_t *cs)
{
 zfs_case_t *zcp = fmd_case_getspecific(hdl, cs);

 if (zcp->zc_data.zc_serd_checksum[0] != '\0')
  fmd_serd_destroy(hdl, zcp->zc_data.zc_serd_checksum);
 if (zcp->zc_data.zc_serd_io[0] != '\0')
  fmd_serd_destroy(hdl, zcp->zc_data.zc_serd_io);
 if (zcp->zc_data.zc_has_remove_timer)
  fmd_timer_remove(hdl, zcp->zc_remove_timer);

 uu_list_remove(zfs_cases, zcp);
 uu_list_node_fini(zcp, &zcp->zc_node, zfs_case_pool);
 fmd_hdl_free(hdl, zcp, sizeof (zfs_case_t));
}
