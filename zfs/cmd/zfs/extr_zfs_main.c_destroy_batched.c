
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cb_batchedsnaps; } ;
typedef TYPE_1__ destroy_cbdata_t ;


 int B_FALSE ;
 int fnvlist_alloc () ;
 int fnvlist_free (int ) ;
 int g_zfs ;
 int zfs_destroy_snaps_nvl (int ,int ,int ) ;

__attribute__((used)) static int
destroy_batched(destroy_cbdata_t *cb)
{
 int error = zfs_destroy_snaps_nvl(g_zfs,
     cb->cb_batchedsnaps, B_FALSE);
 fnvlist_free(cb->cb_batchedsnaps);
 cb->cb_batchedsnaps = fnvlist_alloc();
 return (error);
}
