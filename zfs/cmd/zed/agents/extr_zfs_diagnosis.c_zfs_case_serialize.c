
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zc_version; } ;
struct TYPE_5__ {TYPE_1__ zc_data; } ;
typedef TYPE_2__ zfs_case_t ;
typedef int fmd_hdl_t ;


 int CASE_DATA_VERSION_SERD ;

__attribute__((used)) static void
zfs_case_serialize(fmd_hdl_t *hdl, zfs_case_t *zcp)
{
 zcp->zc_data.zc_version = CASE_DATA_VERSION_SERD;
}
