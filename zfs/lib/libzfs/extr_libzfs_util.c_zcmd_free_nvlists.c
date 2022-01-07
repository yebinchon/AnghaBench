
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zc_nvlist_dst; scalar_t__ zc_nvlist_src; scalar_t__ zc_nvlist_conf; } ;
typedef TYPE_1__ zfs_cmd_t ;


 int free (void*) ;

void
zcmd_free_nvlists(zfs_cmd_t *zc)
{
 free((void *)(uintptr_t)zc->zc_nvlist_conf);
 free((void *)(uintptr_t)zc->zc_nvlist_src);
 free((void *)(uintptr_t)zc->zc_nvlist_dst);
 zc->zc_nvlist_conf = 0;
 zc->zc_nvlist_src = 0;
 zc->zc_nvlist_dst = 0;
}
